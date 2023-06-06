@isTest
public class ParametreliMetotlar16Test {
     @isTest
 private static void printWelcomeTest(){
    ParametreliMetotlar16 pm = new ParametreliMetotlar16();
    pm.printWelcome();
    }
    @isTest
    private static void welcomePersonTest(){
    ParametreliMetotlar16 pm = new ParametreliMetotlar16();
    pm.welcomePerson('Refia');
    }
    @isTest
    private static void toplamaTest(){
    ParametreliMetotlar16 pm = new ParametreliMetotlar16();
    integer tplm= pm.toplama(11,22);
    assert.areEqual(33,tplm);
    }
    @isTest
    private static void artikYilTest(){
    
    ParametreliMetotlar16 pm = new ParametreliMetotlar16();
    date dt = date.newInstance(2023,5,24);
    boolean result= pm.artikYil(dt);
    assert.isFalse(result);
        
    }
    @isTest
    private static void uzunlukTest(){
    ParametreliMetotlar16 pm = new ParametreliMetotlar16();
    integer sonuc = pm.uzunluk('merhaba');
    assert.areEqual(7,sonuc);
        
    }


}