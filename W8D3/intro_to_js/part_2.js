function fizzBuzz(array){
  var newArray = [];

  array.forEach(el => {
    if (el % 3 === 0 || el % 5 === 0){
      newArray.push(el);
    }
  });

  return newArray;
}

let array = [1, 2 , 3, 4 , 5, 6];
console.log(fizzBuzz(array));

function isPrime(num){

  if (num < 2){
    return false;
  }

  for (let i = 2; i < num; i++){
    if (num % i === 0){
      return false;
    } 
  }

  return true;

}

console.log(isPrime(2));
console.log(isPrime(10));
console.log(isPrime(15485863));
console.log(isPrime(3548563));

function sumOfNPrimes(num){
  var primeArr = []

  var n = 2;
  while (primeArr.length < num){
    if (isPrime(n)){
      primeArr.push(n);
    }
    n++;
  }

  var sum = 0;
  primeArr.forEach(el => { sum += el });
    
  return sum;
}

console.log(sumOfNPrimes(0))
console.log(sumOfNPrimes(1))
console.log(sumOfNPrimes(4))