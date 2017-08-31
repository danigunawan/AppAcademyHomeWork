// function mysteryScoping1() {
//   var x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
//
// function mysteryScoping2() {
//   const x = 'out of block';
//   if (true) {
//     const x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
//
// function mysteryScoping3() {
//   const x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
//
// function mysteryScoping4() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
//
// function mysteryScoping5 () {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x); //one
//   }
//   let x = 'out of block again';
//   console.log(x); //two
// }

function madLib(verb, adjective, noun) {
  return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`
}

// console.log(madLib('make', 'best', 'guac'));


function isSubstring(searchString, subString) {
  return searchString.indexOf(subString) !== -1 ;
}

// console.log(isSubstring('Blue Whale', 'Blue'))
// console.log(isSubstring('Blue Whale', 'Taco'))

function fizzBuzz(array) {
  let res_arr = []

  for (let i = 0; i < array.length; i++) {
    let el = array[i]
    if ( el % 3 === 0 && !(el % 5 === 0)){
      res_arr.push(array[i]);
    } else if (el % 5 === 0 && !( el % 3 === 0)) {
      res_arr.push(array[i]);
    }
  }
  return res_arr
}
// console.log(fizzBuzz([3,5,15,2,4,6,10,30,27]))

function isPrime(number) {
  if (number === 1) {
    return false
  }
  let n = 2;
  while( n < number ) {
    if ( number % n === 0 ) {
      return false;
    }
    n += 1;
  }
  return true;
}

// console.log(isPrime(1729));
// console.log(isPrime(823));

function sumOfNPrimes(n) {
  let sum = 0
  let primeCount = 0
  let num = 0
  while ( primeCount <= n ){
    if (isPrime(num)) {
      sum += num
      primeCount += 1
    }
    num += 1
  }
  return sum
}

console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));
console.log(sumOfNPrimes(83));
