public class ForLoopDemo {
    public void printHello() {

        for(integer i=1; i<=10; i++){
            system.debug('hello');
        }

    }

    // public void printHello2(){
    //     string x = 'Salesforce';

    //     for(integer i=1; i<=25; i++){
    //         system.debug('Hello World');
    //         x+=5;
    //         system.debug(x);
            
    //     }
    // }
    public void printInt(integer n){
        string printStr='';
        string s ='this';
        s+=' is a string';
        for(integer i=0; i<n; i++){
         printStr+=i+',';
         s+=i;
         system.debug(s);
        }
        system.debug(printStr);
    }
public void printOddNumbers(integer startInt, integer ednInt){
    for(integer i=startInt; i<=ednInt; i++){
        integer modI=math.mod(i,2);
        if(modI==1) {
            system.debug(i);
        }
    }
}
public void forLoopExample(){
    integer no=5;
    integer fact=1;
    for (integer i=1; i<=no; i++){
    fact*= i;}
    system.debug('factorial of '+no+' is: '+fact);

}

}