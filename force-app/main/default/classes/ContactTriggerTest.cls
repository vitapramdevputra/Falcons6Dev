@isTest
public with sharing class ContactTriggerTest {
    @istest
    private static void testValidation1() {
        Contact c1 = new contact();
        c1.LastName = 'testLastName';
        c1.LeadSource = 'Email';
        insert c1;
        try{
            c1.LeadSource = 'Phone';
            update c1; //not allowed to update lead source. from trigger?
        } catch(DmlException ex){
            system.debug(ex.getMessage());
            system.assert(ex.getMessage().contains('FIELD_CUSTOM_VALIDATION_EXCEPTION'));
        }
        
    }
}
