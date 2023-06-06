public class Loops_Assignment{
    public integer whileLoopsMethod(integer n){
        integer i=1;
        while(i<=n){
            system.debug(i);
            i++;
        }
        return i;
    }
    public void printEven(){
        for (integer b=1; b<=100; b++){
            integer remainder = math.mod(b,2);
            if(remainder==0) {
                system.debug(b);}
                
        }
    }
     public integer printPower(integer x){
        integer result = 1;
       for(integer a=1; a<=x; a++){
            result*=x;
        }
            system.debug(result);
          return result;
       }
       
 }
