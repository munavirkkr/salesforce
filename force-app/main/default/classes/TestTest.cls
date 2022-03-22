public class TestTest {

    
    public static void Test()
    {
       list<list<SObject>> abc = [Find 'W%' IN ALL FIELDS RETURNING Contact(FirstName),Account];
        
        system.debug(abc);
    }
}