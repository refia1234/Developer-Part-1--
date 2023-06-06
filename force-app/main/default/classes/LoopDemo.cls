public  class LoopDemo {
    //print 1 to 25.
     public void printIntWhile() {
         //initialize
         integer i= 1;
        //whenever value of i is less than 25, go inside while block
         while(i<=25){
             system.debug(i);
             //increment or decrement
             i++;

         }
         system.debug('after while i==> '+i);

     }

    public void print5multiple(integer n){

        integer i =1;
        while(i<=n){
            integer remainder=math.mod(i,5);
            if(remainder==0){
                system.debug(i);
            }
            i++;
        }
    }
}