require 'spec_helper'

describe Typeright do
  it 'should do some math +-' do
    expect(Typeright.s('So, Pi +- 3.1?')).to eq('So, π ± 3.1?')
  end

  it 'should do some math ->' do
    expect(Typeright.s('So, Pi -> 3.1?')).to eq('So, π → 3.1?')
  end

  it 'should do some math <-' do
    expect(Typeright.s('Go back <- this')).to eq('Go back ← this')
  end

  it 'should do some math =>' do
    expect(Typeright.s('So, Pi => 3.1?')).to eq('So, π ⇒ 3.1?')
  end

  it 'should do some math <=' do
    expect(Typeright.s('Go back <= this')).to eq('Go back ⇐ this')
  end

  it 'should do some math <<>>' do
    expect(Typeright.s('Said <<hello>>')).to eq('Said «hello»')
  end

  it 'should do some math <<>>' do
    expect(Typeright.s('Said <<hello>>')).to eq('Said «hello»')
  end

  it 'should not touch ``' do
    expect(Typeright.s('Said `hello`')).to eq('Said `hello`')
  end
end
