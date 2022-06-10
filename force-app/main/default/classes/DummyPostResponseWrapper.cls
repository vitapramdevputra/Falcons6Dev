public with sharing class DummyPostResponseWrapper {
    public list<Cls_Post> posts;

    public class Cls_Post{
        public integer id;
        public string title;
        public string body;
        public integer userId;
        public List<string> tags;
    }
}
