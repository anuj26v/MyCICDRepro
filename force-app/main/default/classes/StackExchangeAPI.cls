public class StackExchangeAPI{

    public SFSEQuestions responseResource;
    public StackExchangeAPI(){
        responseResource=this.responseResource;
    }
    public HttpResponse callout(String requestMethod, String requestEndpoint, String requestBody){
        //Instantiate a new HTTP request,specify the method (GET) as well as the endpoint
        Http httpQuestions = new Http();
        HttpRequest requestQuestions = new HttpRequest();
        requestQuestions.setEndpoint(requestEndpoint);
        requestQuestions.setMethod(requestMethod);
        requestQuestions.setHeader('Content-Type', 'application/json');
        //Send the request, andreturn a response
        HTTPResponse responseQuestions = httpQuestions.send(requestQuestions);        
        return responseQuestions;
    }

}