public class ParkLocator {

    public static list<string> country( String Country)
    {
        ParkService.ParksImplPort prk= new ParkService.ParksImplPort();
        return prk.byCountry(Country);
    }
}