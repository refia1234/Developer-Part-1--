public  class MapDemo {
    public static void mapStringInteger() {

        map<string,integer> map1= new map<string,integer>{'one'=>101, 'two'=>202};
        map1.put('three',303);
        map1.put('one',1001);
        system.debug(map1);

    }

    public static string monthName(integer i){

        string month ='';
        map<integer,string> months = new map<integer,string>{1=>'January',2=>'February',3=>'March',4=>'April',5=>'May',6=>'June',7=>'July',8=>'August',9=>'September',10=>'October',11=>'November',12=>'December'};

        if(months.containsKey(i)){

            month=months.get(i);

        }else{

            month='invalid month parameter!';
        }

        return month ;
    }
}