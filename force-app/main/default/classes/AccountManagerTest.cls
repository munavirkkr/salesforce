@isTest
public class AccountManagerTest {
    
    @isTest 
    static void testGetAccountById() {
        Id recordId = createTestRecord();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://d5j000008dvrgeam-dev-ed.my.salesforce.com/services/apexrest/Accounts/'
            + recordId +'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisCase = AccountManager.getAccount();
        // Verify results
        System.assert(thisCase != null);
        System.assertEquals('Test record', thisCase.Name);
    }
public static ID createTestRecord()
{
    // Create test record
        Account caseTest = new Account(
            Name='Test record');
            insert caseTest;
           Contact c = new Contact(FirstName='Test1',LastName='Test1',AccountId=caseTest.Id);
        insert c;
        return caseTest.Id;
}
}