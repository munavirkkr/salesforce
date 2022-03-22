public class AccountHandler {

    Public static Account insertNewAccount(string name)
    {
        
      Account Acnt=New Account();
        if (name !='')
        {
        Acnt.Name=name;
        Acnt.AccountNumber='acnt123';
       insert Acnt;
        return Acnt;
        }
        try{
         insert Acnt;
          return Acnt;
        }
        catch(DMLexception e) {
            return null;
        }
    }
}