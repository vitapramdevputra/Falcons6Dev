@RestResource(urlMapping ='/ContactCustom/*')
global class CustomContactAPI {
    //return contact details and account name
    @httpGet
    global static Contact getContactId() {
        system.debug('custom contact api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //Fetch contact ID from URI
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contactId: ' + contactId);
        //Fetch contact details from contact ID
        contact c = [
            select name, email, phone, account.name 
            from contact
            where id = :contactId
        ];
        return c;
    }

    @HttpPost
    global static Id createContact(
        string fName, string lName, string emailId, string phoneNumber, string accountId
    ){
        Contact c = new contact();
        c.FirstName = fName;
        c.LastName = lName;
        c.Email = emailId;
        c.Phone = phoneNumber;
        c.AccountId = accountId;
        insert c;
        return c.id;
    }
}
