// Week Seven
// Syntax

// Reversing Function for Strings
//INPUT: Function can take a string
//STEPS: Function indexes the string to know the length and position of each character
//       Reorder characters starting with the last one according to the index
//       Re-concatenate the characters into a single string again
//OUTPUT: Function prints the string in reverse on to the console

function Reverse(string) {
  str = string.split("");
  rev_str = []
  for (i = str.length-1; i>=0; i--) {
  rev_str.push(str[i]);
}
  string = rev_str.join("");
  if (string.length > 4) {
  console.log(string)}
  else {
  console.log("Word is too short");}
}




// ==============================================
// Driving Code

Reverse('hola');

