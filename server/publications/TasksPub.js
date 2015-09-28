Meteor.publishComposite("tasks", function() {
  return {
    find: function() {
      return Task.find({});
    }
    // ,
    // children: [
    //   {
    //     find: function(item) {
    //       return [];
    //     }
    //   }
    // ]
  }
});