public class ContactRestCallout {
    
    public static void getContacts(String userId){ //1-parametre girdik
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://jsonplaceholder.typicode.com/users/' + userId); //2- + userId ile diger contact'lari cagirabiliriz
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==200){
            
            //Diger class'imizdan bir instance olusturacagiz
            RestContactParse myContact = RestContactParse.parse(response.getBody());
            //response.getBody() icinde String formatinda JSON yapisi vardir
            
            System.debug(myContact.name);
            System.debug(myContact.email);
            System.debug(myContact.Company.name); //diger class'imizdan verileri cektik
            
            //Karsi sistemden gelen bu data ile Salesforce'da bir contact olusturalim
            Contact cont = new Contact();
            cont.LastName = myContact.name; 
            cont.Email = myContact.email;
            //insert cont; 3- Surekli insert gerceklesmesin diye yoruma dusurdum.
            
        }
    }
}