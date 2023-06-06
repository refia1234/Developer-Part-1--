public class Calculator {
    public integer example(integer a, integer b){
        integer sum = a+b;
        return sum;
    }
    public void example(decimal a, decimal b){
        system.debug(a+b);
   }
   public integer example(integer z, integer x, integer c){
        integer sum = (z+x+c);
        return sum;
        //return (z+x+c); //THIS WORKS too. 
   }
   public boolean leapYearCheck(date dt){
    integer yr = dt.year();
    boolean lp = date.isLeapYear(yr);
    return lp;

   }

    }
