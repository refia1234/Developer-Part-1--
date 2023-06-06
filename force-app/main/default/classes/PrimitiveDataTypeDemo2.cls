public class PrimitiveDataTypeDemo2 {
    public void printNewDate(){
        system.debug('create new date variable');

        Date newDate1 = Date.newInstance(1992,4,15);
        system.debug(newDate1);

        Date newDate2= Date.newInstance(2020,3,20);
        system.debug(newDate2);

        Date todayDate= date.today();
        system.debug('Today\'s date is '+todayDate);

    }
     public void printNewTime(){
         Time newTime1= Time.newInstance(11,10,30,50);
         system.debug(newTime1);

         Time newTime2=time.newInstance(21,12,15,40);
         system.debug(newTime2);
    // Datetime current = Datetime.now();
    // system.debug(current);
     }
}