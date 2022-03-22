@isTest
public class AnimalLocatorTest {
   
    @istest
    static void animalTest()
    {
      Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 

    string response = AnimalLocator.getAnimalNameById(1);
  
    string expectedValue = 'moos';
    System.assertEquals(response, 'moose');
 
    }
}