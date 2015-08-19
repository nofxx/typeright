module Typeright
  # Let's "quote"
  module Quotator
    def self.work(txt)
      txt
        .gsub(/(\W|^)"(\S)/, '\1“\2') # beginning "
        .gsub(/(“[^"]*)"([^"]*$|[^“"]*“)/, '\1”\2') # ending "
        .gsub(/([^0-9])"/, '\1”') # remaining " at end of word
        .gsub(/(\W|^)'(\S)/, '\1‘\2') # beginning '
        .gsub(/([a-z])'([a-z])/i, '\1’\2') # conjunction's possession
        .gsub(/((‘[^']*)|[a-z])'([^0-9]|$)/i, '\1’\3') # ending '
        .gsub(/(‘)([0-9]{2}[^’]*)(‘([^0-9]|$)|$|’[a-z])/i, '’\2\3') # abbrev. years like '93
        .gsub(/(\B|^)‘(?=([^’]*’\b)*([^’‘]*\W[’‘]\b|[^’‘]*$))/i, '\1’')
        .gsub(/'''/, '‴') # triple prime
        .gsub(/("|'')/, '″') # double prime
        .tr("'", '′')
    end
  end
end
