public with sharing class FileUploadController {

    Private Static FINAL String fixedFileName = 'AACB#';

    public boolean displaying { get; set; }
    public Ticket__c pageFile;
    public Blob profilePicFile { get; set; }
    public Id currentPicture { get; set; }
    public String contentType {get; set;}
    
    /** Constructor, grab record, and check/load an existing photo */
    public FileUploadController(ApexPages.StandardController controller) {
        pageFile = (Ticket__c)controller.getRecord();
        
        List<attachment> currentPictures = [SELECT Id FROM Attachment WHERE parentId = :pageFile.Id AND name like '%fixedFileName%' LIMIT 1];
        if(currentPictures.size() != 0) {
            currentPicture = currentPictures.get(0).Id;
        }
        
        displaying = true;
    }

    /** toggle switches between the photo display and photo upload form */
    public void toggle() {
        displaying = !displaying;
    }
    
    /** saveFile clears any existing profile picture, retrieves the data from the form, and saves it under the relevant filename*/
    Public Pagereference saveFile() {

        // first, we cannot have any conflicting files
        List<attachment> savedPicture = [SELECT Id, name, body FROM Attachment WHERE parentId = :pageFile.Id AND name like '%fixedFileName%'];
        if(savedPicture.size() > 0) {
            delete savedPicture;
        }
       
        // Find file extension and set with file name
        String fileext=null;
        
        If(contentType =='application/pdf')
          fileext = 'pdf';
        else if(contentType =='image/jpeg')
          fileext = 'jpeg';
          
        // Now, we save the new blob  
        Attachment a = new Attachment(parentId = pageFile.Id, name = fixedFileName+'.'+fileext, body = profilePicFile,ContentType=contentType );
        insert a;
        
        currentPicture = a.Id;
        
        displaying = true;
        return null;
    }
    

}