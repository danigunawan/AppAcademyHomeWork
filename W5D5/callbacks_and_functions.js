// window.setTimeOut(function() {
//   alert('Hammer-Time');
// }, 5000);
//
//
// let hammerTime = function(time) {
//   window.setTimeOut(function() {
//     alert(`${time} is hammer time.`);
//   }, time);
// };


const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  let first, second;

  reader.question('Would you like some tea?', (res1) => {
    reader.question('Would you like some biscuits?', (res2) => {

      first = res1;
      second = res2;
      console.log(`You replied ${res1}.`);
      console.log(`You replied ${res2}.`);

      reader.close();
      
      const firstRes = (first === 'yes') ? 'do' : 'don\'t';
      const secondRes = (second === 'yes') ? 'do' : 'don\'t';
      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
    });
  });

}

teaAndBiscuits();
