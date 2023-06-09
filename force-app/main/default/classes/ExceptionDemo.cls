public class ExceptionDemo {
    public static void demo1(string s){
try{
        string s2 = s.toUpperCase();
        system.debug('s2 is '+ s2);
}catch(Exception ex){
    system.debug('something with wrong there ');
    system.debug('common exception '+ ex);
    
}
    system.debug('code completed');
    } 

    public static void demo2 (string n, integer j ){

       try{
         account a = new account (name=n);
        insert a;
        system.debug('new acc: '+a);

        integer x = 10/0;
        system.debug('x==> '+x);
       }
       catch(DmlException de){
        system.debug('Dml went wrong buddy ');
        system.debug('de message: '+ de.getMessage());
        system.debug('de cause :'+ de.getCause());
       }

       catch(MathException me){

        system.debug('something with wrong there ');
        system.debug('me exception '+ me);

        }

       catch(Exception ex){

        system.debug('something with wrong there ');
        system.debug('common exception '+ ex);
       


       }

       system.debug('code complete. Apex is simple.');

    }

    public static account demo3(string n){

        try{
            account a2=[select id , name from account where name =:n limit 1];
            system.debug(a2);

            account a = new account(name=n);
            insert a;

            return a;

        }catch(Exception ex){
            system.debug('something went wrong ');
            system.debug('general or common exception :'+ex);
            return new account();

        }finally{

            system.debug('finally finally');
            system.debug('apex is still simple');
        }

    }
}