public class ControlFlowDemo {
    public void checkBigger(integer a,integer b) {
if(a>b){
    system.debug('a is bigger than b');
}else{
    system.debug('b is bigger than a');
}
    }
    public void checkBigger2(integer a, integer b){
        if(a>b){
            system.debug('a is bigger than b');
        }else{
            system.debug('b is bigger than a');
        }
        }
        public void checkNumber(integer a){
            if(a>0){
                integer remainder =math.mod(a,2);
                if(remainder==1){
                    system.debug(a+' is odd');
                }else{
                    system.debug(a+' is even');
                }
                }else{
                    if(a==0){
                        system.debug('a is zero');
                    }else{
                        system.debug('a is negative');

                    }
                }
            }


        }
