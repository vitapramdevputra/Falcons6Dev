@isTest
public with sharing class AnimalsHttpMockCalloutFailure implements HttpCalloutMock{
    public HttpResponse respond(HttpRequest request){
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setStatusCode(404);
        return response;
    }
}
