module Typeright
  # Numbers and symbols replacement
  module Calculator
    class << self
      def work(txt)
        math(arrows(txt))
      end

      def arrows(txt)
        txt
          .gsub(/(^|\s)\=\>(\W)/, '\1⇒\2')
          .gsub(/(^|\s)-\>(\W)/, '\1→\2')
          .gsub(/(^|\s)\<-(\W)/, '\1←\2')
          .gsub(/(^|\s)\<\=(\W)/, '\1⇐\2')
          .gsub(/(^|\s)\<\<(\w)/, '\1«\2')
          .gsub(/(\w)\>\>(\s|$)/, '\1»\2')
      end

      def math(txt)
        txt
          .gsub(/(^|\s)Pi(\W)/, '\1π\2')
          .gsub(/(^|\s)\!\=(\W)/, '\1≠\2')
          .gsub(/(^|\s)\+-(\s)/, '\1±\2')
          .gsub(/(\w)%o(\s|$)/, '\1‰\2')
      end
    end
  end
end