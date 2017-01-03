pragma solidity ^0.4.0;
contract People {
 Person[] public people;
struct Person {
bytes32 firstName;
bytes32 lastName;
uint age;
}
function addPerson(bytes32 _firstName, bytes32 _lastName, uint _age) returns (bool success){
// memory- can store in state
// carving out new struct slash memory for array
Person memory newPerson;
newPerson.firstName = _firstName;
newPerson.lastName = _lastName;
newPerson.age = _age;

people.push(newPerson);
return true;
//saves to blockchain "push" changes state
return true;

}
//getter
// changes state --- constant
//arrays of arrays  below  table below /
//strings can be any length and creating an array
//of strings could be an issue if you have strings of different lengths and so this
//is not normally an issue with some program for some programming languages
//but solidity it is ... change to fixed length  with padding .bytes
// if you're creating a function that changes state on the blockchain then you do need
//to be very careful while looping functions because it's possible if
//you're looping over say say an array in that array gets too long then you can
//run out of gas


function getPeople() constant returns (bytes32[],bytes32[],uint[]){
uint length = people.length;
bytes32[] memory firstNames = new bytes32[](length);
bytes32[] memory lastNames = new bytes32[](length);
uint[] memory ages = new uint[](length);


for (uint  i = 0; i < people.length; i++){

// we're going to do is we're going to loop over the ra
//we're going to create a new person structure and in memory and we're going
//to populate it with the element of the array that we're looking at currently
//looking at and then we will feed the popper the properties of that structure
//that we're currently looking at from memory into this

Person memory currentPerson;
currentPerson = people[i];

firstNames[i] = currentPerson.firstName;

lastNames[i] = currentPerson.firstName;

ages[i] = currentPerson.age;

}
return (firstNames,lastNames,ages);

}
}
