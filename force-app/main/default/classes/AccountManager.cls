@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
@HttpGet
    global static Account getAccount()
    {
          RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String AccId = request.requestURI.substringBetween('Accounts/','/contacts');
        Account result =  [SELECT ID,Name, (select ID,FirstName,LastName from Contacts ) from Account where ID=:AccId];
                        
        return result;
    }
}