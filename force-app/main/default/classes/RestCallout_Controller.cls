public with sharing class RestCallout_Controller {
    
    public String requestEndpoint {get;set;}
    public String requestMethod {get;set;}
    public String requestBody {get;set;}
    public String responseStatus {get;set;}
    public Integer responseStatusCode {get;set;}
    public String responseBody {get;set;}
    public SFSEQuestions response {get;set;}
    public List<SFSEQuestion> deserializedQuestions {get;set;}
    
    public RestCallout_Controller(){
        requestEndpoint = 'http://api.stackexchange.com/2.2/users/605/questions?order=desc&sort=activity&site=salesforce';
    }

    public void callout(){
        StackExchangeAPI st = new StackExchangeAPI();
        HttpResponse res = st.callout('GET', requestEndpoint, requestBody);
        responseStatus = res.getStatus();
        responseStatusCode = res.getStatusCode();
        responseBody = res.getBody();
    }
    
    public void deserializeQuestions(){
        if ( string.isNotBlank(responseBody) ){
            response = (SFSEQuestions)JSON.deserialize(responseBody,SFSEQuestions.class);
            deserializedQuestions = response.items;
        }   
    }
    
    public List<SelectOption> getMethodOptions(){
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('GET','GET'));
        options.add(new SelectOption('POST','POST'));
        options.add(new SelectOption('PUT','PUT'));
        options.add(new SelectOption('DELETE','DELETE'));
        options.add(new SelectOption('HEAD','HEAD'));
        return options;
    }
}