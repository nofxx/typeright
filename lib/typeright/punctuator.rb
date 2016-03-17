module Typeright
  # UTF-8 hyphens -- for everyone
  module Punctuator
    # Elipses
    def self.work(txt)
      txt
        .gsub(/\.{3}/, '…')
        .gsub(/--/, '—')
        .tr('-', '–')
    end
  end
end
