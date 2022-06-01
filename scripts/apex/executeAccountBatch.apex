List<account> accs = [select id, name from account];
AccountQueueableExample qa = new AccountQueueableExample(accs);
id jobid = system.enqueueJob(qa);
system.debug('job id is ' + jobid);




AccountsBatch ab = new AccountsBatch();
database.executeBatch(ab, 20);


