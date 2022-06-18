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

    @httpDelete
    global static String deleteContact() {
        system.debug('custom contact api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //Fetch contact ID from URI
        //    /ContactCustom/0035j00000SesCxAAJ
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contactId: ' + contactId);
        
        contact c = new contact();
        c.id = contactId;

        delete c;
        return 'Contact deleted with id: ' + contactId;
    }

    @httpPatch
    global static String updateContact(
        string emailId, string phoneNumber
    ) {
        system.debug('custom contact api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //Fetch contact ID from URI
        //    /ContactCustom/0035j00000SesCxAAJ
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contactId: ' + contactId);
        
        contact c = new contact();
        c.id = contactId;
        c.Email = emailId;
        c.Phone = phoneNumber;
        update c;
        return 'Contact update with id: ' + contactId;
    }

    @httpPut
    global static List<id> upsertContact(List<Contact> cons){
       
        upsert cons;

        list<id> ids = new list<id>();
        for (contact con : cons) {
            ids.add(con.id);
        }
        return ids;
    }
}
