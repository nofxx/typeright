module Typeright
  # Numbers and symbols replacement
  module Calculator
    class << self
      # Arrows may conflict with math, so run em first
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

      # Maybe (1) -> ① ⨉× √ µ
      def math(txt)
        txt
          .gsub(/(^|\s)Pi(\W)/, '\1π\2')
          .gsub(/(\d\s)\/(\s\d)/, '\1÷\2')
          .gsub(/(\d\s)\*(\s\d)/, '\1×\2')
          .gsub(/(^|\s)\!\=(\W)/, '\1≠\2')
          .gsub(/(^|\s)\+-(\s)/, '\1±\2')
          .gsub(/(\w)%o(\s|$)/, '\1‰\2')
      end
    end
  end
end
