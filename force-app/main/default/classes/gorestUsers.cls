public class gorestUsers {
    
    public static void getUsers(String userId){ //1
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://gorest.co.in/public/v2/users/' + userId); //2-
        request.setMethod('GET');
        request.setHeader('Authorization', 'Bearer cc393ab1712be10607a2ce01e9cc1c92d3e3751ee41fdddb6d57bc17bb3d8906');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==200){
            //List<Object> restGoUser = (List<Object>) JSON.deserializeUntyped(response.getBody()); //3-tek bir user object yapisinda gelecek
            //for(Object w : restGoUser){
                //System.debug('Result : ' + w);
            //}
            Object user1 = (Object) JSON.deserializeUntyped(response.getBody());
            System.debug('Result : ' + user1);
        }else{
            System.debug('Error :' + response.getStatusCode() + ' ' + response.getStatus());
        }        
    }
    //-----------------
    
    public static void getUsers2(String userId){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://gorest.co.in/public/v2/users/' + userId); //2-
        request.setMethod('GET');
        request.setHeader('Authorization', 'Bearer 961eba83fca71b1b7ca9dfdf63845e8e59383d1feb92c59efce12977451ff7f1');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==200){
            
        ContactParse goUser = ContactParse.parse(response.getBody());
        System.debug('Result : ' + goUser.name);
            
        }else{
            
            System.debug('Hata : ' + response.getStatusCode() + ' ' + response.getStatus());
        }
    }
}