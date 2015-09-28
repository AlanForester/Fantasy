Task = new Mongo.Collection('tasks');

Task.helpers({

});

Task.before.insert(function (userId, doc) {
  doc.createdAt = moment().toDate();
});
