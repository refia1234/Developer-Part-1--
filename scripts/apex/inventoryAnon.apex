InventoryManager obj1 = new InventoryManager();
obj1.setSellingPrice(2000);
obj1.setCostPrice(800);
obj1.getSellingPrice();
obj1.getCostPrice();
obj1.productDisplay();


InventoryManager obj2 = new InventoryManager('Ozel Urun','ReV4638');
obj2.setSellingPrice(1100);
obj2.getSellingPrice();
obj2.getCostPrice();
obj2.setCostPrice(1000);
obj2.productDisplay();

system.debug(InventoryManager.productCount);




