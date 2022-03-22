public class AnimalLocator {

public static String getAnimalNameById(integer num)
    {
        
Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+num);
request.setMethod('GET');
HttpResponse response = http.send(request);
// If the request is successful, parse the JSON response.

    
    map<string,object> animals = (map<string,object>)JSON.deserializeUntyped(response.getBody());
    
    map<string,object> animal= (map<string,object>) animals.get('animal');
    
    string abc= (string)animal.get('name');
    system.debug(abc);
     return abc;
    
    
       
}
}