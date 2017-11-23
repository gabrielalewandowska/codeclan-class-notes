use codeclan;
db.dropDatabase();

db.students.insert([
  {
    name: "Alice",
    favouriteFood: "Pasta"
  },
  {
    name: "Daniel",
    favouriteFood: "Paella"
  }
]);

db.students.find();

show collections;

db.instructors.insert([
  {
    name: "Alex",
    favouriteFood: "Curry"
  },
  {
    name: "Craig",
    favouriteFood: "Cake"
  }
]);

db.instructors.find();

show collections;

db.students.count();

db.students.distinct("favouriteFood");
