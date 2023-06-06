Test_Ref ifc = new Test_Ref();
string durum1 = ifc.positiveOrNegative(-111);
System.debug('sayimiz = ' + durum1);
string durum2 = ifc.positiveOrNegative(11);
System.debug('sayimiz = ' + durum2);
string durum3 = ifc.positiveOrNegative(0);
System.debug('sayimiz = ' + durum3);

Test_Ref ifc2 = new Test_Ref();
string sonuc1 = ifc2.notOrtalamasi(75, 95, 100);
System.debug('gecer not = ' + sonuc1);
string sonuc2 = ifc2.notOrtalamasi(175, 95, 100);
System.debug('gecer not = ' + sonuc2);

Test_Ref ifc3 = new Test_Ref();
string result1 = ifc3.tasKagitMakas('kagit', 'tas');
System.debug('kazanan => ' + result1);
string result2 = ifc3.tasKagitMakas('makas', 'tas');
System.debug('kazanan => ' + result2);
string result22 = ifc3.tasKagitMakas('makas', 'makas');
System.debug('kazanan => ' + result22);
string result3 = ifc3.tasKagitMakas('tornavida', 'tas');
System.debug('kazanan => ' + result3);

Test_Ref ifc4 = new Test_Ref();
decimal fiyat1 = ifc4.switchMethod('Mango');
System.debug(fiyat1);
decimal fiyat2 = ifc4.switchMethod('Banana');
System.debug(fiyat2);
decimal fiyat3 = ifc4.switchMethod('Cucember');
System.debug(fiyat3);