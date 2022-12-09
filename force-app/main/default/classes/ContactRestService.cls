@RestResource (UrlMapping='/ContactProvider/') //1- ContactProvider variable ismidir
global class ContactRestService { //2- public'i global yaptik
    
    //get istegine cevap verecek methodu olusturalim.
    @HttpGet
    global static Contact getContact(){
        
        RestRequest request = RestContext.request; //sabit syntax
        
        String conId = request.params.get('contactId'); //request'in icinden harici sistemin gonderdigi parametre ile
        				//istenilen contct'in id'sine ulastik.
        Contact con = [SELECT Id, Name, Email, Phone FROM Contact WHERE Id=: conId LIMIT 1];
        return con;
    }
    
    //post istegine cevap verecek methodu olusturalim
    @HttpPost
    global static Contact postContact(Contact request){
        Contact con = new Contact();
        con.FirstName = request.FirstName;
        con.LastName = request.LastName;
        con.Email = request.Email;
        con.Phone = request.Phone;
        insert con;
        return con;
    }
}