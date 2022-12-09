({
    getAccHandler : function(component, event, helper) {//1-method ismini degistir


        let action = component.get("c.getAccount"); //2- cagiracagi meethod yaz

        action.setCallback(this, function (response) {

            let state = response.getState(); 

            if (state === 'SUCCESS') { 
                component.set("v.acc", response.getReturnValue()); //3 variable degistir
            } else {
                console.log("Islem basarisiz");
            }
            
        });
        $A.enqueueAction(action);
    },

    onchangecHandler : function(component, event, helper) {//1-method ismini degistir


        let action = component.get("c.getAccountParams"); //2- cagiracagi meethod yaz

        action.setParams({accName: event.getParam("value")});//3-input'a girilen value parametre adi altinda  accNAme'e yani class'a gonderildi

        action.setCallback(this, function (response) {

            let state = response.getState(); 

            if (state === 'SUCCESS') { 
                component.set("v.acc", response.getReturnValue()); //3 variable degistir
            } else {
                console.log("Islem basarisiz");
            }
            
        });
        $A.enqueueAction(action);
    },
    
})