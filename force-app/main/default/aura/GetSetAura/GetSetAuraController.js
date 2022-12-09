({
	onclickHandler : function(component, event, helper) {
		var deger = component.get("v.attr1");
        component.set("v.attr2","Deger controllerdan atandi");
        console.log(deger);
	},
    inputValueHandler : function(component, event, helper) {
		let girDeger = event.getParam("value"); // inputtan girilen degeri yakaladik
        component.set("v.inputValue", girDeger);
	}
})