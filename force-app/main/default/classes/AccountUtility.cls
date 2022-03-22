public class AccountUtility {

    public static void viewAnnualRevenue()
    {
        list<Account> accountsList=[select Name, AnnualRevenue from Account];
        for ( Account Ac: accountsList)
            
        {
            String acctRev=Ac.Name+':'+Ac.Annualrevenue;
            System.debug(acctRev);
            
        }
    }
}