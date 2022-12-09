public with sharing class ApexAura {

    @AuraEnabled(cacheable=true)
    public static String getApexMessage(){
        return 'Bu mesajApex den gelmekdedi';
    }
    
}