public with sharing class getAcccont {

@AuraEnabled (cacheable = true)
public static list<Contact> getConData(id recId){
    
        list<Contact> con=[SELECT Id,FirstName,LastName,Email from Contact where AccountId=: recId];
        
        return con;
}
// @AuraEnabled (cacheable = true)
// public void contactFieldsConcat(Id accid){

// accountid = accid;

// string query ='select id, name, (select id, name from Contacts) from account where id =: '+accountid;
// accList = Database.query(query);
// system.debug(accList);
// }


}