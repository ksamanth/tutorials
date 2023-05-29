public class UnsplashUtility {
    
    // Where we are call the external service. || REST API Callouts. - GET, POST, DELETE, PATCH, PUT
    // Where the external site is trying to access salesforce data. || web services. setup a get service, setup a post

    // Connected App | App

    @AuraEnabled
    public static String MakeACallToUnsplash() {
        try {
            Http http = new Http(); // To make the callout we need this
            HttpRequest request = new HttpRequest(); // Contains all the request information
            request.setEndpoint('https://api.unsplash.com/photos/');
            request.setHeader('Authorization', 'Client-ID 89yFxWBzceUzdJ9mljfbzokHbm4nlndld8_pldAmIO0');
            request.setMethod('GET');
            HttpResponse response = http.send(request); // What you get from the callout.
            return response.getBody();

            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}