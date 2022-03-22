@IsTest
public class TestRestrictContactByName {

    @IsTest Static void TestContact()
    {
        Contact S= new Contact (LastName = 'INVALIDNAME');
        insert S;
        
        S.LastName='abchj';
        insert S;
    }
    
}