@istest
public class AnimalsHttpCalloutMock implements HttpCalloutMock{
    public HttpResponse respond(HttpRequest request){
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animals":["monkey","donkey","cat","dog"]}');
        response.setStatusCode(200);
        return response;
    }
}
