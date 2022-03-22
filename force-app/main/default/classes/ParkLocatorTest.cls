@isTest
public class ParkLocatorTest {

    @isTest
    public static void testCallout(){
        Test.SetMock(WebServiceMock.class, new ParkServiceMock());
        String Country='Japan';
        list<String> Coun = new list <string>{'abc','ccd'};
            system.assertEquals(Coun, ParkLocator.country(Country));
    }
}