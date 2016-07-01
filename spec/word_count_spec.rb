require('rspec')
require('word_count')

describe('String#word_count') do
  it('returns how frequrnely a word appears in a given string') do
    expect(("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?").word_count("peck")).to(eq(2))
  end
  it('handles words with differing cases') do
    expect(("If Peter Piper picked a peck of pickled peppers, where's the Peck of pickled peppers Peter Piper picked?").word_count("peck")).to(eq(2))
  end
  it('handles when a users search word is capitalized') do
    expect(("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?").word_count("Peck")).to(eq(2))
  end
end
