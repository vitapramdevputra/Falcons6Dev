@istest
public with sharing class AnimalsCalloutsTest {
    @istest
    private static void testFetchAnimalsSuccess() {
        AnimalsHttpCalloutMock am = new AnimalsHttpCalloutMock();
        Test.setMock(HttpCalloutMock.class, am );

        Test.startTest();
        AnimalsCallouts.fetchAnimals();
        HttpResponse response = AnimalsCallouts.fetchAnimals2();
        Test.stopTest();

        system.assertEquals(200, response.getStatusCode());
    }
    @istest
    private static void testFetchAnimalsFailure() {
        //set failure mock
        AnimalsHttpMockCalloutFailure am = new AnimalsHttpMockCalloutFailure();
        Test.setMock(HttpCalloutMock.class, am );

        Test.startTest();
        HttpResponse response = AnimalsCallouts.fetchAnimals2();
        Test.stopTest();

        system.assertEquals(404, response.getStatusCode());
    }
}
