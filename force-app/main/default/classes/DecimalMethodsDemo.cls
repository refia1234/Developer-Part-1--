public class DecimalMethodsDemo {
    public void practise1() {
        
        decimal d1=7.45124578;
        decimal d1x= d1.setScale(2);
        system.debug(d1x);

        decimal d2=88.77554466;
        decimal d2x= d2.setScale(3);
        system.debug(d2x);

        string s= '88.77';
        decimal x= decimal.valueOf(s);
        system.debug(s+5);
        system.debug(x+5);


    }
    public void practise2(){
        decimal myMoney=554.8945;
        decimal myMoney2= myMoney.setScale(2);
        system.debug(myMoney2);
        string myMoneyStr=myMoney2.toPlainString();
        system.debug(myMoneyStr);
        decimal myMoney3=decimal.valueOf(myMoneyStr);
        system.debug(myMoney3);
    }
}
