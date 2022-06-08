public with sharing class DummyPostResponseWrapper {
    public list<Post> posts;

    public class Post{
        public integer id;
        public string title;
        public string body;
        public integer userId;
        public List<string> tags;
    }
}
