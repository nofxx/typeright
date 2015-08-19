module Typeright
  # UTF-8 hyphens -- for everyone
  module Punctuator
    def self.work(txt)
      # Elipses
      txt
        .gsub(/\.{3}/, '…')
        .gsub(/--/, '—')
        .tr('-', '–')
    end
  end
end
