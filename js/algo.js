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

// DRIVER CODE----------------------------------------------------------------------
var array = ["boom", "bam", "power", "powerful"]

console.log("In this data set the greatest power word is " + find_longest(array) + ".")

console.log(key_compare({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(key_compare({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));