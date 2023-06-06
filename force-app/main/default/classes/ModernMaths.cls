public class ModernMaths {
   
    public static void printFactors(integer num) {

        List<integer> numbers = new List<integer>();

        for(integer i=1; i<=num; i++){

            integer remainder = math.mod(num,i);

            if(remainder==0){
                
                numbers.add(i);  
                }
                
            } 
           
            system.debug(numbers);

        }
    }