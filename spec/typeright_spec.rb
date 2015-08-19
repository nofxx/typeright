require 'spec_helper'

describe Typeright do
  it 'should change minus to hyphens' do
    expect(Typeright.s('And suddenly -- No more.'))
      .to eq('And suddenly — No more.')
  end

  it 'should change dots to ellipse' do
    expect(Typeright.s('And suddenly... No more.'))
      .to eq('And suddenly… No more.')
  end

  it 'should make beautiful quotes' do
    expect(Typeright.s('And suddenly... "No more".'))
      .to eq('And suddenly… “No more”.')
  end

  it 'should make beautiful quotes' do
    expect(Typeright.s("Walk among us... 'Nevermind!'"))
      .to eq('Walk among us… ‘Nevermind!’')
  end

  it 'should do some math Pi π' do
    expect(Typeright.s('So, Pi = 3.14...')).to eq('So, π = 3.14…')
  end

  it 'should do some math != π' do
    expect(Typeright.s('So, Pi != 1???')).to eq('So, π ≠ 1???')
  end

  it 'should do some math +-' do
    expect(Typeright.s('So, Pi +- 3.1?')).to eq('So, π ± 3.1?')
  end

  it 'should do some math ->' do
    expect(Typeright.s('So, Pi -> 3.1?')).to eq('So, π → 3.1?')
  end

  it 'should do some math %o' do
    expect(Typeright.s('It means 10%o')).to eq('It means 10‰')
  end

  {
    'pretty :-) So good' => 'pretty :-) So good',
    'place, I\'d rewrite it' => 'place, I’d rewrite it',
    'by 50 more reviewers...' => 'by 50 more reviewers…',
    'So "Why don\'t you" -- implied' => 'So “Why don’t you” — implied',
    'So "Why don\'t you?"' => 'So “Why don’t you?”',
    'So "Why don\'t you".' => 'So “Why don’t you”.',
    'So "Why don\'t you?".' => 'So “Why don’t you?”.'
  }.each do |k, v|
    it "should work nice with #{k} -> #{v}" do
      expect(Typeright.s(k)).to eq(v)
    end
  end
end
