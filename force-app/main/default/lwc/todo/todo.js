import { LightningElement,track,wire } from 'lwc';
import getTaskList from '@salesforce/apex/TodoListController.getTaskList';
import insertTask from '@salesforce/apex/TodoListController.insertTask';
import deleteTask from '@salesforce/apex/TodoListController.deleteTask';
import {refreshApex} from'@salesforce/apex';
export default class Todo extends LightningElement {
@track 
todotask=[];
@track todoresponse;
@track processing=true;
@wire(getTaskList)
getTodoTask(response){
    this.todoresponse=response;
    let data=response.data;
    let error=response.error;

    if (data||error)
    {this.processing=false;}

    if (data)
    {
        console.log("data present");

        data.forEach(task=> {
            this.todotask.push({id:this.todotask.length +1,
                Subject: task.Subject,
                RecordID: task.Id
            });
        });

    }
    else if (error)
    {console.log("error");}

}

 newtask='';

 refresh(){
    this.processing=true;
     refreshApex(this.todoresponse)
     .finally(()=>this.processing=false);

 }
updatetask(event){

    this.newtask= event.target.value;
}

update(event){
    if (this.newtask=='')
    {
        return ;
    }
this.processing=true;
    insertTask({subject: this.newtask})
    .then(response=>{console.log("success");
        this.todotask.push({id:this.todotask.length + 1, Subject: this.newtask, RecordID:response.Id });
console.log(response);
    this.newtask='';
})
.catch(error=>console.log("error"))
.finally(()=>this.processing=false);


    
}

DeleteTask(event){
  this.processing=true;
 let recordId;
    let matchid=event.target.name;
 
    let todo= this.todotask;
   for (let i=0;i<todo.length;i++)
   {if(todo[i].id==matchid)
    {recordId=todo[i].RecordID}
}
    //let recordId=todo[i].RecordID;
    
    deleteTask({recordid:recordId})
    .then(response=>{
        console.log(response);
        todo.splice(todo.findIndex(todo=> matchid==todo.id),1);})
    .catch(error=>console.log(error))
    .finally(()=>{
        this.processing=false;
        todo=null;
    });
;
   

    
}


}