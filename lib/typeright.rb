# require 'pry'
# require 'yaml'
require 'typeright/version'

# Typeright!
module Typeright
  # autoload :Hyphenator, 'typeright/hyphenator'
  autoload :Punctuator, 'typeright/punctuator'
  autoload :Quotator,   'typeright/quotator'
  autoload :Calculator, 'typeright/calculator'

  TYPERS = [
    Calculator,
    Punctuator,
    Quotator
  ]

  def self.s(txt)
    TYPERS.reduce(txt) do |s, t|
      t.work(s)
    end
  end
end
