public with sharing class AccountQueueableExample implements Queueable{
    public list<account> listAccount;

    public AccountQueueableExample(list<account> accList){
        listAccount = accList;
    }

    public void execute(QueueableContext qc){
        for (account a : listAccount) {
            a.Name = a.Name + ' -- SI';
        }
        update listAccount;
    }
}
