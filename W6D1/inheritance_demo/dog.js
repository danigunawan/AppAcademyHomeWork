const Animal = require('./animal.js');

function Dog(name) {
  this.name = name;
}


const Surrogate = function() {};
Surrogate.prototype = Animal.prototype;
Dog.prototype = new Surrogate();

Dog.prototype.woof = function(){
  console.log("woof, I am " + this.name);
};

module.exports = Dog;
