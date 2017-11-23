use farm;
db.dropDatabase();

db.animals.insert({
  name: "Erik",
  type: "Polar Bear"
})

db.animals.insert({
  name: "Percy",
  type: "Pig"
})

db.animals.find();
db.animals.find({name: "Erik"});

db.animals.update(
  {name: "Erik"},
{
  $set: {type: "Goose"}
});

db.animals.find();

db.animals.remove({name: "Erik"})
db.animals.find();
