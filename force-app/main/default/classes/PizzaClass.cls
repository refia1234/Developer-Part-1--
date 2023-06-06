public class PizzaClass {
   integer orderId=0;
   integer quantity;
   string toppings;
   string type;
   decimal tax;
   string feedback;
   
   public void addCart(integer quantity, string toppings, string type){
    orderId++;
    system.debug(orderId);

    if(quantity==1){
        tax=0.18;
        system.debug(tax);

    }else if(quantity==2){
        tax=0.12;
        system.debug(tax);
    }else if(quantity==3){
        tax=0.06;
        system.debug(tax);

    }else if(quantity>4){
        tax=0;
        system.debug(tax);
    }
    
   }
   public void cancelCart(){
    orderId=0;
    system.debug(orderId);
   }
   public void feedBack(string yorum){
    system.debug(yorum);

   }
}