trigger SendEmail on Ticket__c (after update) 
{
        for(Ticket__c tckt : trigger.new)
        {
          If(tckt.Status__c == 'Closed')
              {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[]{'Ishwar.kabra@nl.abnamro.com'};
        mail.setToAddresses(toAddresses);
        mail.setReplyTo('user@domain.com');
        mail.setSenderDisplayName('SFDC Support');
        mail.setBccSender(false);
        mail.setUseSignature(false);
        mail.setTargetObjectId('0052800000154Oa');
       // Give visualforce template id
        mail.setTemplateId('00X0K000001GHjR');
        mail.saveAsActivity = false;    
        
      //Set email file attachments
        List<Messaging.Emailfileattachment> fileAttachments = new List<Messaging.Emailfileattachment>();
        for (Attachment a : [select Id,ContentType, Name, Body, BodyLength from Attachment where ParentId = :trigger.new])
        {
     // Add to attachment file list
        Messaging.Emailfileattachment efa = new Messaging.Emailfileattachment();
        efa.setFileName(a.Name);
        efa.setBody(a.Body);
        efa.setContentType(a.ContentType);
        fileAttachments.add(efa);
        }
        mail.setFileAttachments(fileAttachments);

      //Send email
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        }
        }
}