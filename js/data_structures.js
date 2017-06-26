// Week Seven Pairing

// Declare two separate arrays with colors and horse names
var names = ["Ed", "Mariah", "Queen B","Ernest"];
var colors = ["Black","Chestnut", "Buckskin", "Palomino"]

//Add new names and colors
names.push("Cooper")
colors.push("Seal Brown")

console.log(names)
console.log(colors)

var horse = {name: names[0], color: colors[0]};

console.log(horse)

//Building objects from the arrays (must be same length)
//Could have used foreach too...
for (var i = 0; i < names.length; i++) {
  horse = {name: names[i], color: colors [i]};
  console.log(horse)
}

//Results
// { name: 'Ed', color: 'Black' }
// { name: 'Ed', color: 'Black' }
// { name: 'Mariah', color: 'Chestnut' }
// { name: 'Queen B', color: 'Buckskin' }
// { name: 'Ernest', color: 'Palomino' }
// { name: 'Cooper', color: 'Seal Brown' }

// Building a constructor function for cars

function Car(model, brand, year, miles, passTest) {
  console.log("About this car:", this);
  this.model = model;
  this.brand = brand;
  this.year= year;
  this.miles = miles;
  this.passTest = passTest;

  this.summary = function() { console.log("This " + this.model + " made by " + this.brand + ", year " + this.year + " with " + this.miles + " miles"); };

  console.log("Car initialization complete");
}

// Building a car

console.log("Building a new car:");
// Here is where we call that constructor function
// that we just made ...
var mynewCar = new Car("X5", "BMW", 2016, 310, true);
console.log(mynewCar);
console.log("Here's the summary:");
mynewCar.summary();

// Results:
// Building a new car:
// About this car: {}
// CAR INITIALIZATION COMPLETE
// { model: 'X5',
//   brand: 'BMW',
//   year: 2016,
//   miles: 310,
//   passTest: true,
//   summary: [Function] }
// Here's the summary:
// This X5 made by BMW, year 2016 with 310 miles
