function Chain(value, ancestor='') {
  function chain(newValue) {
    return Chain(value + newValue, value);
  };

  chain.toString = () => { return value };
  chain.ancestor = ancestor ;

  return chain;
}

// let foo = Chain("h");
// let bar = foo("e")("l")("l")("o");

// console.log(foo.toString());
// console.log(bar.toString());
// console.log(bar.ancestor);
module.exports = Chain;