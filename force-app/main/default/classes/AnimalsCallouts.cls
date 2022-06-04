public with sharing class AnimalsCallouts {
    public static void fetchAnimals() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 200) {
            string animalsJSON = response.getBody();
            system.debug(animalsJSON);
        } else {
            system.debug('something went wrong people');
        }
    }
}
