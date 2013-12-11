var expect = require('expect.js'),
    chop = require(__dirname + '/../kata2.js');

describe('#chop', function() {
  it('returns -1 for an empty array', function() {
    expect(chop(0, [])).to.equal(-1);
  });
});