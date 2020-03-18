const Chain = require('./chain');

describe('toString()', () => {
  describe('When there is only one item', () => {
    test('returns the item', () => {
      expect(Chain('a').toString()).toBe('a');
    });
  });

  describe('When there are many items', () => {
    test('returns the chain', () => {
      foo = Chain("h");
      let bar = foo("e")("l")("l")("o");
      expect(bar.toString()).toBe('hello');
    });
  });
});

describe('ancestor', () => {
  describe('When there is only one item', () => {
    test('returns empty', () => {
      expect(Chain('a').ancestor).toBe('');
    });
  });
  describe('When there are many items', () => {
    test('returns the ancestor when has only 2 items', () => {
      foo = Chain("h");
      let bar = foo("e");
      expect(bar.ancestor).toBe('h');
    });

    test('returns the ancestor when has many items', () => {
      foo = Chain("h");
      let bar = foo("e")("l")("l")("o");
      expect(bar.ancestor).toBe('hell');
    });
  });
});