List<account> listAcc = new list<account>{
            new account(name = 'May', phone = '7775556666', Industry = 'Energy'),
            new account(name = 'June', Active__c = 'Yes'),
            new account(name = 'Sunday', Industry = 'Energy', Active__c = 'Yes'),
            new account()
        };

        // insert listAcc;

        // Database.insert(listAcc,true);
      List<Database.saveResult> allResults = Database.insert(listAcc,false);

      for(Database.saveResult eachSR : allResults){
        if(eachSR.isSuccess()){

            system.debug('record inserted successfully. Record id is: '+ eachSR.getId());

        }else{

            system.debug('Errors: '+ eachSR.getErrors());

        }

      }

      // List<database.SaveResult> r2 = database.update(l2, false);
      // list<database.DeleteResult> r3 = database.delete(lids, false);
      // list<database.UndeleteResult> r4 = database.undelete(lids, false);


      


