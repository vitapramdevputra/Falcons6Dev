string jsonAccountString = '{"Name":"JsonToApex", "Type":"Prospect", "AnnualRevenue":50}';

Object ob = JSON.deserialize(jsonAccountString, Account.class);
Account acc = (Account)ob;
insert acc;


string jsonAccountString2 = '[{"Name":"HERO", "Type":"Prospect", "AnnualRevenue":50}, {"Name":"Json To Apex HERO", "Type":"Prospect", "AnnualRevenue":509999999999}]';
Object ob = JSON.deserialize(jsonAccountString2, List<Account>.class);
List<Account> listacc = (List<Account>)ob;
insert listacc;
