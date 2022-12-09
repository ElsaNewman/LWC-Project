({
    handleCaptureEvent : function(component, event, helper) {
        alert("Event,Parent Component'ta Capture fazinda handle edildi.");
        event.stopPropagation();
    },
    handleBubbleEvent : function(component, event, helper) {
        alert("Event,Parent Component'ta bubble fazinda handle edildi.");
    }
})