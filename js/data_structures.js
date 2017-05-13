var four_color_arr = ["blue", "green", "magenta", "mauve"];
var four_name_arr = ["Oprah", "Ben", "Socks", "Callie"];

four_color_arr.push("celeste", "gold");

console.log(four_color_arr);

four_name_arr.push("Virgil", "John");

console.log(four_name_arr);

//build an object
//{ name: '', key: 'value' }

//access value with varName['key']
// or varName.key

//with a var varName =

//add to array with
//arrName['key'] = 'added thing'
//or  arrName.key = value
//var nameIndex = four_name_arr[0];
//var combined = {nameIndex: four_color_arr[0]}; 
var combined = {}


for (var i = 0; i < 5; i++ ) {
	combined[four_name_arr[i]] = four_color_arr[i];
}
console.log(combined);

//car function
function Car(make, model, age) {
	console.log("This car is:", this);
	// data types: make, model, age
	this.make = make;
	this.model = model;
	this.age = age;
	//at least one function: drive(move forward, vroom!)
	this.drive = function() { console.log("Vroom!"); };

	console.log("Initialization complete: Car made!!")
}

console.log("Let's test drive a car!");
var anotherCar = new Car("Toyota", "Corolla", 11);
console.log(anotherCar);
console.log("Our car can drive");
anotherCar.drive();
console.log("-----");
