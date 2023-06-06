public class InventoryManager {

   string productName;
   string productCode;
   integer costPrice;
   integer sellingPrice;
   public static integer productCount=0;

    public InventoryManager() {
        productCount++;

    }
    public InventoryManager(string productName, string productCode){
        productCount++;
        this.productName=productName;
        this.productCode=productCode;
    }

    public void setCostPrice(integer costPrice){
        this.costPrice=costPrice;
    }
    public integer getCostPrice(){
        return costPrice;
    }
    public void setSellingPrice(integer sellingPrice){
        this.sellingPrice=sellingPrice;
    }
    public integer getSellingPrice(){
        return sellingPrice;
    }
    public void productDisplay(){

        system.debug(productName);
        system.debug(productCode);
        system.debug(sellingPrice);
        system.debug(costPrice);

        integer profitPercent = (sellingPrice-costPrice)*100/costPrice;

        if(profitPercent>=20){
            system.debug('Star Product');
        
        }else{
            system.debug('Average Product');
        }

       

        // system.debug(productCount);
        
    }
}