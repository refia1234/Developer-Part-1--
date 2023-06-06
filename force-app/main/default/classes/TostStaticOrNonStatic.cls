public class TestStaticOrNonStatic {



    public static void sample(){
        date today1=date.today();
        date myBirthday= date.newInstance(1997,3,2);
        integer difference = myBirthday.monthsBetween(today1);
        system.debug(difference);
    }
    public static integer add(integer a, integer b){
        return(a+b);
    }
   
}