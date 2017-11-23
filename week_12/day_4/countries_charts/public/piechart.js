// var myCountries = [];
// var countryNames = [];
// var populationSize = [];
var countries;
var arrayOfCountryObjects = [];

var makeRequest = function() {
  var request = new XMLHttpRequest();
  request.open( "GET", "https://restcountries.eu/rest/v2/all");
  request.addEventListener( "load", function() {
  countries = JSON.parse( this.responseText );
  console.log("req", countries);
    getEuropeanCountries(countries);
  })
  request.send();
}

var getEuropeanCountries = function(countries){
  console.log("countries: " + countries);
  for(var country of countries){
    if(country.region === "Europe"){
      arrayOfCountryObjects.push({name: country.name, y: country.population});
    }
  }
  console.log("function: " + arrayOfCountryObjects);
}

// var getCountryNames = function(countriesArray){
//   var countryNames = [];
//   for(var country of countriesArray){
//     countryNames.push(country.name);
//   }
//   console.log(countryNames);
//   return countryNames;
// }

// var getPopulationSize = function(countriesArray){
//   var populationSize = [];
//   for(var country of countriesArray){
//     populationSize.push(country.population);
//   }
//   // console.log(populationSize);
//   return populationSize;
// }
//
// var createArrayOfCountryObjects = function(namesArray, populationArray){
//   console.log("gets hit");
//   var countryObjectsArray = [];
//
//   for(var i = 0; i < namesArray.length; i++){
//     for(var j = 0; j < populationArray.length; j++){
//       countryObjectsArray.push({name: namesArray[i], y: populationArray[j]});
//     }
//   }
//   console.log(countryObjectsArray);
//   return countryObjectsArray;
// }

var createPieChart = function(countries){
  var europeanCountries = getEuropeanCountries(countries);
  console.log("pie: " + europeanCountries);
  var chart = new Highcharts.Chart({
    chart: {
      type: "column",
      renderTo: document.querySelector("div#pie-chart")
    },
    title: {
      text: "European Countries By Population"
    },
    series: [
      {
        name: "Type",
        data: [
          {
            name: "Fire",
            y: 4,
            // color: "#FFAC33",
          },
          {
            name: "Water",
            y: 22,
            color: "#73B7FF"
          },
          {
            name: "Grass",
            y: 10,
            color: "#00BA2F"
          }
        ]
      }
    ]
  });
}
