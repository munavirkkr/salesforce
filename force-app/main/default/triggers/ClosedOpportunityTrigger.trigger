trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {

    list<Task> Tasklist = new list<task>();
    
    for (Opportunity op : [Select Id from Opportunity where Id in :Trigger.New AND StageName='Closed Won'])
    {
        
        Tasklist.add(new Task(Subject='Follow Up Test Task', WhatId=op.Id));
    }
    
    if (Tasklist.Size()>0)
    {
        Insert Tasklist;
    }
}