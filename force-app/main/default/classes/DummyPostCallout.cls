public with sharing class DummyPostCallout {
    private static string GET_DUMMYPOST_ENDPOINT = CalloutInfo__mdt.getInstance('GET_DUMMYPOST').Endpoint__c;
    private static string HTTP_GET = 'GET';
    private static string HTTP_POST = 'POST';

    public static void postCallout() {
        //1. create request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(GET_DUMMYPOST_ENDPOINT);
        request.setMethod(HTTP_GET);

        //2. prepare http
        http http = new http();

        //3. send request, get response
        HttpResponse response = http.send(request);

        system.debug(response);
        if(response.getStatusCode() == 200){
            system.debug(response.getBody());
            DummyPostResponseWrapper dummywrapper = (DummyPostResponseWrapper)JSON.deserialize(response.getBody(), DummyPostResponseWrapper.class);
            system.debug('dummy wrapper = '+dummywrapper);
            //List<post__c> 
            system.debug('dummywrapper.posts = ' + dummywrapper.posts);
            List<post__c> listPosts = new list<post__c>();
            List<DummyPostResponseWrapper.Cls_Post> listClsPost = dummywrapper.posts;
            for (DummyPostResponseWrapper.Cls_Post dpost : listClsPost) {
                post__c p = new post__c();
                p.id__c = dpost.id;
                p.title__c = dpost.title;
                p.body__c = dpost.body;
                p.UserID__c = dpost.userId;
                p.Tags__c = dpost.tags.toString();
                listPosts.add(p);
            }
            //Database.insert(listPosts, false);
            //insert + update
            //if ID is found --> update
            //if ID NOT found --> insert
            upsert listPosts id__c;

        } else {
            system.debug(response.getStatus());
        }
    }
}
