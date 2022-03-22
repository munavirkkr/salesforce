public with sharing class TodoList {
    @AuraEnabled(cacheable=true)
    public static List<Task> getTaskList() {
        return [
            SELECT Subject
            FROM Task
            WHERE OwnerId=:UserInfo.getUserId()];
    }
}