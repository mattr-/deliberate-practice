//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.shouting = function(input) {
  var re = /[A-Za-z]+/;
  return re.test(input) && input.toUpperCase() === input
}

Bob.prototype.asking = function(input) {
  return input.lastIndexOf('?') === input.length - 1;
}

Bob.prototype.nothing_said = function(input) {
  return input.trim() === "";
}

Bob.prototype.hey = function(input) {
  if (this.nothing_said(input)) {
    return "Fine. Be that way!";
  }
  if (this.shouting(input)) {
    return "Whoa, chill out!";
  }
  if (this.asking(input)) {
    return "Sure.";
  }
  return "Whatever.";
};


module.exports = Bob;
