// Algorithmn - Find the longest phrase
// input: Array of strings
// steps:
// search through Array for longest element
// output: return the longest element

function find_longest(array){
	var longest_length = 0, longest_index;
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > longest_length){
			longest_length = array[i].length;
			longest_index = i;
		}
	}
	return array[longest_index];
}
function key_compare(object1, object2) {
	var match = false;
	Object.keys(object1).forEach(function(key){
		if(object2.key == object1.key){
			match = true;
		}
	});
	return match;
}
function random_array(length) {
	var random_array = [];
	for (var i = 0 ; i < length; i++) {
		random_array.push(randomString(Math.floor(Math.random() * (10 - 1)) + 1));
		}
	return random_array;
}

//Random word gen to simplify random_array code inspired by https://www.thepolyglotdeveloper.com/2015/03/create-a-random-nonce-string-using-javascript/
function randomString(length) {
	var text = "";
	var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < length; i++) {
		text += possible.charAt(Math.floor(Math.random() * possible.length));
	}
	return text;
}
// DRIVER CODE----------------------------------------------------------------------
var array = ["boom", "bam", "power", "powerful"]

console.log("In this data set the greatest power word is " + find_longest(array) + ".")

console.log(key_compare({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(key_compare({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));

for (var i = 0; i < 10; i++) {
	console.log(find_longest(random_array(i + 2)));
}
