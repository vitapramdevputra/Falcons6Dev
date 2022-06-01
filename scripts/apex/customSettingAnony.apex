Map<string, Country_Code__c> mapCC = Country_Code__c.getAll();
system.debug('map of country code = ' + mapCC);
for (string eachCountry : mapCC.keySet()) {
    system.debug('Country = ' + eachCountry + ', code = ' + mapCC.get(eachCountry).country_code__c);
}

/*
07:39:51:173 USER_DEBUG [2]|DEBUG|map of country code = {Canada=Country_Code__c:{LastModifiedDate=2022-05-28 02:01:29, IsDeleted=false, CreatedById=0055j0000060gCGAAY, CreatedDate=2022-05-28 02:01:29, Country_Code__c=CAN, Id=a025j00000AONZfAAP, LastModifiedById=0055j0000060gCGAAY, SetupOwnerId=00D5j00000BVxzgEAD, Name=Canada, SystemModstamp=2022-05-28 02:01:29}, India=Country_Code__c:{LastModifiedDate=2022-05-28 02:01:45, IsDeleted=false, CreatedById=0055j0000060gCGAAY, CreatedDate=2022-05-28 02:01:45, Country_Code__c=IND, Id=a025