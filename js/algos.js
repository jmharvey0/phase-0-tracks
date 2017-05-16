// RELEASE 0
// function takes an array of words or phrases
// function returns the longest word or phrase in the array
var lengthArr = ["long phrase","longest phrase","longer phrase"]
var characterArr = []
	for (i = 0; i < lengthArr.length; i++){
		characterArr.push(lengthArr[i].length);
	}
	// console.log(characterArr);
	var max = Math.max(...characterArr);
	//returns the number 14, which sits at index 1 of array
	for (i = 0; i < lengthArr.length; i++){
		if (lengthArr[i].length == max){
			console.log(lengthArr[i])
		}
	}

//RELEASE 1
//take two objects and check to see if the objects share at least 1 key/value pair

pair1={name: "Steven", age: 54}; 
pair2={name: "Tamir", age: 54};

yourFunction2({animal: "Dog", legs: 4, tongue: 1}, {nose: 1, animal: "Dog", legs: 3});

//take one pair and compare to everything else in next array
yourFuction2([1])


function compare(object1, object2) {
	object1[0]
	//iterate through all object 1 keys with for OR for_in OR object.keys
	//first key is animal
	//check to see if key called animal in object2

	OR
	//i know i have animal in object 1
	//iterate through all keys in object 2 to see if there's a match

	//i know the value for animal in object 1 is dog
	//is the value for animal in object 2 dog
	//if yes, true

	//check key symbol
	//if key symbol match, check key value
	if (pair1SymbolArr[0] == pair2SymbolArr[0]){
		console.log("Key symbols match!");
	}
	else if (pair1SymbolArr[1] == pair2SymbolArr[1]){
		console.log("Value symbols match!");
	}
	// 	if key value match
	// 		return true
	// 	else
	// 		return false
	// 	end
	// end

	//check value symbol
	//if value symbol match, check value value
		//if value value match
			//return true
		//else
			//return false
		//end
	//end
}

// RELEASE 2
// function takes length (integer)
// function returns an array with length number of strings
// strings returned should be of randomly varying length (1-10 letters) 
//hint: will need to generate a random number