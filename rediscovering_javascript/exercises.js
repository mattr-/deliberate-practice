// This file contains all the code from doing the exercises from the book
// Rediscovering Javascript
const amountAfterTaxes = function (amount, ...taxes) {
  let tax_amount = 0;
  for (let i = 0; i < taxes.length; i++) {
    tax_amount = tax_amount + (amount * (taxes[i] / 100));
  }
  return amount + tax_amount;

}

const purchaseItems = function(essential1, essential2, ...optionals) {
  console.log(essential1 + ', ' + essential2 + ', ' + optionals.join(', '));
}

const amount = 25.12;
const fedTax = 10;
const stateTax = 2;
const localTax = 0.5;


console.log(amountAfterTaxes(amount)); //25.12
console.log(amountAfterTaxes(amount, fedTax)); //27.63
console.log(amountAfterTaxes(amount, fedTax, stateTax)); //28.13
console.log(amountAfterTaxes(amount, fedTax, stateTax, localTax)); //28.26


purchaseItems('bread', 'milk');
purchaseItems('bread', 'milk', 'jelly');

const mustHaves = ['bread', 'milk'];
const andAlso = ['eggs', 'donuts', 'tea'];

purchaseItems(...mustHaves, ...andAlso);

const purchaseItems2 = function(essential1 = 'milk', essential2 = 'bread', ...optionals) {
  console.log(essential1 + ', ' + essential2 + ', ' + optionals.join(', '));
}

const items = ['cheese', 'milk'];
purchaseItems2('cheese');
purchaseItems2(...items);
purchaseItems2();

const placeOrder = function(id,
  orderAmount,
  shipping = orderAmount < 20 ? 5 : 10,
  date = new Date()) {
  console.log(' shipping charge for id: ' + id + ' is $' + shipping + ' Date: ' + date.toDateString());
}

//shipping, if not given, is $5 if amount less than 20 else $10
//date is today's date unless given
placeOrder(1, 12.10, 3, new Date('05/15/2018'));
placeOrder(1, 25.20, 10);
placeOrder(1, 12.05);
placeOrder(1, 23.30);
placeOrder(1, 25.20);

placeOrder(2, 19.9999, undefined, new Date('05/20/2020'));


// Chapter 4
const names = ['Sara', 'Jake', 'Pete', 'Mark', 'Jill'];
for (const name of names) {
  console.log(name);
}
