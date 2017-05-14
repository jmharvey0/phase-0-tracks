// Algorithmn - Find the longest phrase
// input: Array of strings
// steps:
// search through Array for longest element
// output: return the longest element

function algos(array){
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
	
}

// DRIVER CODE----------------------------------------------------------------------
var array = ["boom", "bam", "power", "powerful"]

console.log("In this data set the greatest power word is " + algos(array) + ".")