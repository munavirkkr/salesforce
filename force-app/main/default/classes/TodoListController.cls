public with sharing class TodoListController {
    @AuraEnabled(cacheable=true)
    public static List<Task> getTaskList() {
        return [
            SELECT Subject
            FROM Task
            WHERE OwnerId=:UserInfo.getUserId()];
    }

    @AuraEnabled
    public static Task insertTask(String subject) {
  
    Task abc = new Task(Subject=subject, OwnerId=Userinfo.getUserId(), Status='Not Started', Priority='Normal');
   
 insert abc;
    return abc;
  
    
}
@AuraEnabled
    public static Boolean deleteTask(Id recordid) {
        Database.delete(recordid);
        return true;

}}