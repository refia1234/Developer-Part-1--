//1.version 
Queueable q16 = new Queueable();
id jobId = system.enqueueJob(q16);
//2.version
system.enqueueJob(new Queueable());