public class ContactAndLeadSearch {

    public static List<List<sObject>> searchContactsAndLeads( string name)
    {
        
        List<List<sObject>> SearchList= [ Find :name IN ALL FIELDS RETURNING Contact(FirstName,LastName) ,Lead(FirstName,Lastname),Account(Name)];
    
    System.Debug(SearchList[2]);
        return SearchList;
    }
}