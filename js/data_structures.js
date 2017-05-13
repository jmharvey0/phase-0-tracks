/*
In phase-0-tracks/js, create a file called data_structures.js.
In your new file, declare two separate arrays:
an array of four colors ("blue", for instance, though you're welcome to get crazy with something like "iridescent blue/green with silver sparkles")
ombre_horse.jpg

"Raspberry ombre" is an option, and very fashionable among horses right now.

an array of four names that you might give a horse ("Ed" is always a solid choice to start with)
Write additional code that adds another color to the colors array, and another horse name to the horses array.
*/

var colors = ['blue', 'red', 'raspberry', 'yellow'];
var horse_names = ['Ed', 'raspberry', 'runner', 'sea biscuit'];

colors.push('white');
console.log(colors);

colors.splice(1,1)
console.log(colors);

var barn_horses = {};
for (i=0; i < colors.length; i++) {
	barn_horses[horse_names[i]] = colors[i];
}
console.log(barn_horses);

// Horses are great, but times are a-changin', and we need to add an option for faster transportation that we can create with an assembly line. At the bottom of your data_structures.js file, write a constructor function for a car. Give it a few different properties of various data types, including at least one function. Demonstrate that your function works by creating a few cars with it.


function Cars(make, color, mpg, automatic){
  this.make = make;
  this.color = color;
  this.mpg = mpg;
  this.automatic = automatic;
  this.drive = function () {console.log('*vroom*');};
}

var my_car = new Cars('Ford', 'Raspberry', 43, true);
my_car.drive();
console.log(my_car);

console.log(new Cars('Ford', 'Raspberry', 43, true))
