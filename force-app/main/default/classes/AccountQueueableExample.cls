public with sharing class AccountQueueableExample implements Queueable{
    public list<account> listAccount;
    //contructor acceptin list of accounts.
    public AccountQueueableExample(list<account> accList){
        listAccount = accList;
    }
    //implement execute method is mandatory.
    public void execute(QueueableContext qc){
        for (account a : listAccount) {
            a.Name = a.Name + ' -- SI';
        }
        update listAccount;
    }
}
