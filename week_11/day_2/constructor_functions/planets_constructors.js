// Constructor functions task:
// - Create a Planet constructor that takes a name as an argument
// - Create a SolarSystem constructor that takes in a name and has an initial
// empty array of planets.
// - Add a method to the SolarSystem constructor that adds a planet to the array

var Planet = function (name){
  this.name = name;
}

var SolarSystem = function (name) {
  this.name = name;
  this.planets = [];
  this.addPlanet = function(planet) {
    this.planets.push(planet);
  }
}

var earth = new Planet("Earth");
var ourSolarSystem = new SolarSystem("The Solar System");
console.log(earth);
console.log(ourSolarSystem);

ourSolarSystem.addPlanet(earth);
console.log(ourSolarSystem);
