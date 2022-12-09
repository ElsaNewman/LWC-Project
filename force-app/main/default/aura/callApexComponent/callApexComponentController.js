({
    getMessageHandler : function(component, event, helper) {

        //1- action olusturacagiz.
        let action = component.get("c.getApexMessage"); //class'taki methodun ismi buraya yazilir

        action.setCallback(this, function (response) { //olusturdugumuz action'i gonderiyoruz.response yani cevap
            //this (buraya) donecek
            let state = response.getState(); // gelen cevabi yerel bir degiskene atadik

            if (state === 'SUCCESS') { //SUCCESS gelen cevabin icinde vardir.
                component.set("v.message", response.getReturnValue()); //getReturnValue() class'in return degeridir
            } else {
                console.log("Islem basarisiz");
            }
            
        });
        $A.enqueueAction(action);//action'i calismasi icin kuyruga ekliyoruz cunki,Apex methodu Asyncron olarak calisir ona gore "queueble" oldu
    }
    
})