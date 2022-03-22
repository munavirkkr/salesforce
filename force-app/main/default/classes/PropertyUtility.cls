public class PropertyUtility {
    public static void newListedProperties()
    {
        list<Property__c> newPropList=[Select Name,Broker__r.Email__c,Days_On_Market__c from Property__c where Days_On_Market__c <31];
        
        for(Property__c obj:newPropList)
        {
           string propEmail=  obj.Name+':'+obj.Broker__r.Email__c;
            
            system.debug(propEmail);
        }
    }

}