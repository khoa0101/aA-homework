// function mysteryScoping1() {
//   var x = 'out of block';
//   if (true) {
//     var x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// mysteryScoping1(); // in block, in block

// function mysteryScoping2() {
//   const x = 'out of block';
//   if (true) {
//     const x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// mysteryScoping2(); // in block, out of block

// function mysteryScoping3() {
//   const x = 'out of block';
//   if (true) {
//     var x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// mysteryScoping3(); // syntax

// function mysteryScoping4() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// mysteryScoping4(); // in block, out of block

// function mysteryScoping5() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';  
//     console.log(x);
//   }
//   let x = 'out of block again';
//   console.log(x);
// }

// mysteryScoping5(); // syntax 

function madLib(verb, adj, noun){
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}

console.log(madLib('make', 'best', 'guac'));

function isSubstring(phrase, subphrase){
  return phrase.includes(subphrase);
}
console.log(isSubstring("Jump for joy", "joys"));
console.log(isSubstring("time to program", "time"));

