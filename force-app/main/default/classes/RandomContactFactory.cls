public with sharing class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer I, String S){
        List<Contact> conlst = new List<Contact>();
            
            for(Integer k=0;k<I;k++){
                conlst.add(new Contact(FirstName = 'Test '+k,
                                       LastName = S));
            }
            system.debug('cont'+conlst);
        return conlst;
    }
}