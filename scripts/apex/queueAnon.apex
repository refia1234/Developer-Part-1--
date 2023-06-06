List<account> acc = [select id, name from account where createdDate = last_month];
AccountQueueableExample aq = new AccountQueueableExample (acc);
Id jobId = system.enqueueJob (aq) ;

AsyncApexJob ap = [SELECT Id,Status, JobType, MethodName, NumberOfErrors FROM AsyncApexJob where id = : jobId];
system.debug(ap);







