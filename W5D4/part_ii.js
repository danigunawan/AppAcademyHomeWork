let printCallback = function(arr) {
  arr.forEach(function(el) {
    console.log(el);
  });
};

function titleize(names_arr, printCallback) {
  let titledNames = names_arr.map(function(el) {
    return `Mx. ${el} Jingleheimer Schmidt`
  });
  printCallback(titledNames);
}

// titleize(['aob', 'bob', 'cob'], printCallback);

function Elephant(name, height, tricksArray) {
  this.name = name;
  this.height = height;
  this.tricksArray = tricksArray;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRR!!!'`);
};

Elephant.prototype.grow = function () {
  this.height += 12;
};

Elephant.prototype.addTrick = function(trick) {
  this.tricksArray.push(trick);
};

Elephant.prototype.play = function() {
  var trick = this.tricksArray[Math.floor(Math.random()*this.tricksArray.length)];
  return `${this.name} is ${trick}!`;
};

let dumbo = new Elephant('dumbo', 12, ['ball','rope'])

// dumbo.trumpet();
// dumbo.grow();
// console.log(dumbo.height);
// dumbo.addTrick('tacos');
// console.log(dumbo.play());

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by`);
};

// Elephant.paradeHelper(micah);
// herd.forEach(function(el) {
//   Elephant.paradeHelper(el);
// });

function dinerBreakfast() {
  const order = [];
  return (newFood) => {
    order.push(newFood)
    // console.log(order)

    return order
  }
}

function dinerBreakfast2() {
  const orderList = [];

  return (newFood) => {
    orderList.push(newFood);
    // console.log(order)

    let spokenOrder = "I'd like ";

    orderList.forEach(order => {
      spokenOrder = spokenOrder + `${order} and `;
    });

    spokenOrder = spokenOrder + `please.`;
    return spokenOrder
  };
};

let tomsBFast = dinerBreakfast2();
let jonsBFast = dinerBreakfast2();

tomsBFast('eggs')
console.log(tomsBFast('bacon'))
console.log(tomsBFast('sausage'))

jonsBFast('tacos')
jonsBFast('potatos')
console.log(jonsBFast('tacos'))


// let myBasket = dinerBreakfast([], `pizza`);
//
// console.log(myBasket);
//
// let myBasket2 = dinerBreakfast(myBasket, `tacos`);
//
// console.log(myBasket2)
