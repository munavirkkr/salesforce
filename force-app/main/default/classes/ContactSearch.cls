public class ContactSearch {
    public static List<Contact> searchForContacts(String name1, String name2)
    {
        Contact[] con=[select LastName from contact where LastName=:name1 and MailingPostalCode=:name2];
        
        return con;
    }
}