
Template['tasks'].helpers({
    tasks: function() { 
    	return Tasks.find({})
	}
});

Template['tasks'].events({
});
