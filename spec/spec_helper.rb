require 'rubygems'
# require 'pry'
begin
  require 'spec'
rescue LoadError
  require 'rspec'
end

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'typeright'
# include Typeright

if ENV['CI']
  require 'coveralls'
  Coveralls.wear!
end

FOR_README = <<TXT
And so... "Why?" -- He replied.
Because -> someone did in JS! And => I like beautiful text!'.
Also, notice some math: Pi x 180 / 2.
TXT

RSpec.configure do |config|
  # config.mock_with(:mocha)

  config.after(:suite) do
    puts
    puts FOR_README
    puts
    puts Typeright.s(FOR_README)
  end
end
