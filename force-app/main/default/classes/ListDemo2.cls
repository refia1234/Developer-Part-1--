public class ListDemo2 {
    public static void iterateList() {
        List<integer> intList = new List<integer>{90,15,77,21,15,15,90,15,77,21,15,15};
        system.debug(intList);

        for(integer list2: intList){
            system.debug(list2);
        
        }
        for( integer eachNumber  : intList){
            system.debug('5 x '+ eachNumber + ' = ' + eachNumber*5);
            //system.debug(eachNumber);
        }
    }
    public static integer add(List<integer> l1){
        integer sum=0;
         
         for (integer test:l1){
            sum+=test;
         }
         return sum; 

    }
    //we cannot modify(add or remove elements) in the LIST we are using in FOR EACH LOOP but another list we can

    public static void iterateListString(list<string> l2){
        list <string> newLS= new list<string>();
        system.debug(l2);
        for (string eachString: l2){
            system.debug(eachString + ' - its length is ' + eachString.length());
            newLS.add(eachString);
    
        }
        system.debug(newLS);
    }


    public static integer add(integer x, integer y){
        return(x+y);
    }

    public static string add(list<string> strList){
        string a = ' ';
        for(string eachElement: strList){
            a+=eachElement+'||';
            system.debug(eachElement);

        }
        return a;

    }

}