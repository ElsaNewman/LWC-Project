({
	showHandler : function(component, event, helper) {
        if(component.get("v.showMe")==true){
            component.set("v.showMe",false);
                        
        }else{
            component.set("v.showMe",true);
            
        }
	}
})