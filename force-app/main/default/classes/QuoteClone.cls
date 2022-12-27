public with sharing class QuoteClone {
    public Opportunity opp { get; set; }

    public QuoteClone() {
        opp = new Opportunity();
    }
    public pagereference savedata() {
        PageReference ref = null;
        if(opp.SyncedQuoteId==null) {
            opp.SyncedQuoteId.addError('You must select a quote.');
        }
        if(opp.AccountId==null) {
            opp.AccountId.addError('You must select an account.');
        }
        if(opp.SyncedQuoteId!=null && opp.AccountId != null) {
            Set<String> QuoteFields = schema.Quote.sobjecttype.getdescribe().fields.getmap().keyset(),
                        OppFields = schema.opportunity.sobjecttype.getdescribe().fields.getmap().keyset(),
                        QuoteLineFields = schema.quotelineitem.sobjecttype.getdescribe().fields.getmap().keyset();
            Quote q = (Quote)Database.query('select '+String.join(new list<string>(quotefields),',')+' from quote where id = \''+opp.syncedquoteid+'\'');
            Opportunity o = (Opportunity)Database.query('select '+String.join(new list<string>(oppfields),',')+' from opportunity where id = \''+q.opportunityid+'\'');
            o = o.clone(false,false,false,false);
            q = q.clone(false,false,false,false);
            o.accountid = opp.accountid;
            insert o;
            q.opportunityid = o.id;
            insert q;
            QuoteLineItem[] items = (QuoteLineItem[])Database.query('select '+String.join(new list<string>(quotelinefields),',')+' from quotelineitem where quoteid = \''+opp.syncedquoteid+'\'');
            items = items.deepClone(false,false,false);
            for(QuoteLineItem item:items) {
                item.quoteid = q.id;
            }
            insert items;
            ref = new Apexpages.standardcontroller(q).view();
        }
        return ref;
    }
}