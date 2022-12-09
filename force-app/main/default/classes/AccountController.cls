public with sharing class AccountController {
    //6- otomatik olusan methodu silelim ve kendi methodumuzu ekleyelim
    //7- wire decorator kullanabilmek icin class icinde @AuraEnabled(cacheable=true) yazilmalidir
    //Bir methodu LWC'de kullanmak icin yazilmasi zorunludur.
    @AuraEnabled(cacheable=true) 
    public static List<Account> getAccounts(String filter){//8-Java Scripte belirledigim filter variable'i yazilmalidir.

    String keyName ='%'+ filter +'%';
    List<Account>accountList =[SELECT Id, Name, Phone FROM Account WHERE Name LIKE :keyName WITH SECURITY_ENFORCED];
    return accountList;
    
    }

}