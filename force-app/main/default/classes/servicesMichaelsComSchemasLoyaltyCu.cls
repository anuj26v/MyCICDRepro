//Generated by wsdl2apex

public class servicesMichaelsComSchemasLoyaltyCu {
    public class CustomerLookupResponse_element {
        public servicesMichaelsComSchemasLoyaltyCu.System_element System_x;
        public servicesMichaelsComSchemasLoyaltyCu.Data_element Data;
        public servicesMichaelsComSchemasLoyaltyCu.AdditionalParams1_element AdditionalParams1;
        private String[] System_x_type_info = new String[]{'System','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] Data_type_info = new String[]{'Data','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] AdditionalParams1_type_info = new String[]{'AdditionalParams1','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'System_x','Data','AdditionalParams1'};
    }
    public class Params1_element {
        public String Sequence;
        public String Type_x;
        public String Name;
        public String Value;
        private String[] Sequence_type_info = new String[]{'Sequence','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] Type_x_type_info = new String[]{'Type','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] Name_type_info = new String[]{'Name','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] Value_type_info = new String[]{'Value','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'Sequence','Type_x','Name','Value'};
    }
    public class System_element {
        public String Status;
        public String Message;
        private String[] Status_type_info = new String[]{'Status','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] Message_type_info = new String[]{'Message','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'Status','Message'};
    }
    public class Data_element {
        public String LoyaltyID;
        public String Email;
        public String PhoneNumber;
        public String FirstName;
        public String LastName;
        private String[] LoyaltyID_type_info = new String[]{'LoyaltyID','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] Email_type_info = new String[]{'Email','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] PhoneNumber_type_info = new String[]{'PhoneNumber','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] FirstName_type_info = new String[]{'FirstName','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] LastName_type_info = new String[]{'LastName','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'LoyaltyID','Email','PhoneNumber','FirstName','LastName'};
    }
    public class MessageHeader1_element {
        public String Channel;
        public DateTime TimeStamp;
        public String CompanyName;
        public String Division;
        private String[] Channel_type_info = new String[]{'Channel','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'1','1','false'};
        private String[] TimeStamp_type_info = new String[]{'TimeStamp','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'1','1','false'};
        private String[] CompanyName_type_info = new String[]{'CompanyName','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'1','1','false'};
        private String[] Division_type_info = new String[]{'Division','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'Channel','TimeStamp','CompanyName','Division'};
    }
    public class ResponseEnvelope_element {
        public servicesMichaelsComSchemasLoyaltyCu.MessageHeader1_element MessageHeader1;
        public servicesMichaelsComSchemasLoyaltyCu.CustomerLookupResponse_element CustomerLookupResponse;
        private String[] MessageHeader1_type_info = new String[]{'MessageHeader1','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','1','false'};
        private String[] CustomerLookupResponse_type_info = new String[]{'CustomerLookupResponse','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'MessageHeader1','CustomerLookupResponse'};
    }
    public class AdditionalParams1_element {
        public servicesMichaelsComSchemasLoyaltyCu.Params1_element[] Params1;
        private String[] Params1_type_info = new String[]{'Params1','http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupResponse.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'Params1'};
    }
    public class RequestEnvelope_element {
        public servicesMichaelsComSchemasLoyaltyCu.MessageHeader_element MessageHeader;
        public servicesMichaelsComSchemasLoyaltyCu.CustomerLookupRequest_element CustomerLookupRequest;
        private String[] MessageHeader_type_info = new String[]{'MessageHeader','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'0','1','false'};
        private String[] CustomerLookupRequest_type_info = new String[]{'CustomerLookupRequest','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'MessageHeader','CustomerLookupRequest'};
    }
    public class MessageHeader_element {
        public String Channel;
        public DateTime TimeStamp;
        public String CompanyName;
        public String Division;
        private String[] Channel_type_info = new String[]{'Channel','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'1','1','false'};
        private String[] TimeStamp_type_info = new String[]{'TimeStamp','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'1','1','false'};
        private String[] CompanyName_type_info = new String[]{'CompanyName','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'1','1','false'};
        private String[] Division_type_info = new String[]{'Division','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'Channel','TimeStamp','CompanyName','Division'};
    }
    public class CustomerLookupRequest_element {
        public servicesMichaelsComSchemasLoyaltyCu.MemberProfile_element MemberProfile;
        public servicesMichaelsComSchemasLoyaltyCu.AdditionalParams_element AdditionalParams;
        private String[] MemberProfile_type_info = new String[]{'MemberProfile','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'0','1','false'};
        private String[] AdditionalParams_type_info = new String[]{'AdditionalParams','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'MemberProfile','AdditionalParams'};
    }
    public class MemberProfile_element {
        public String LoyaltyID;
        public String Email;
        public String PhoneNumber;
        private String[] LoyaltyID_type_info = new String[]{'LoyaltyID','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'0','1','false'};
        private String[] Email_type_info = new String[]{'Email','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'0','1','false'};
        private String[] PhoneNumber_type_info = new String[]{'PhoneNumber','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'LoyaltyID','Email','PhoneNumber'};
    }
    public class AdditionalParams_element {
        public servicesMichaelsComSchemasLoyaltyCu.Params_element[] Params;
        private String[] Params_type_info = new String[]{'Params','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'Params'};
    }
    public class Params_element {
        public String Sequence;
        public String Type_x;
        public String Name;
        public String Value;
        private String[] Sequence_type_info = new String[]{'Sequence','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'0','1','false'};
        private String[] Type_x_type_info = new String[]{'Type','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'0','1','false'};
        private String[] Name_type_info = new String[]{'Name','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'0','1','false'};
        private String[] Value_type_info = new String[]{'Value','http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://services.michaels.com/schemas/Loyalty/CustomerLookupRequest.xsd','true','false'};
        private String[] field_order_type_info = new String[]{'Sequence','Type_x','Name','Value'};
    }
}