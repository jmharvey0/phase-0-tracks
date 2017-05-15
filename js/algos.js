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

yourFunction1({name: "Steven", age: 54}, {name: "Tamir", age: 54});
yourFunction2({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});

function compare(pair1, pair2) {
	var pair1SymbolArr = [];
		pair1SymbolArr = Object.keys(pair1);
	var pair2SymbolArr = [];
		pair2SymbolArr = Object.keys(pair2);
	var pair1ValueArr = [];
	var pair2ValueArr = [];


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