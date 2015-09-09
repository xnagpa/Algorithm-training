require 'spec_helper'

describe AnagramPalindromeChecker do
  it { expect(AnagramPalindromeChecker.check('kkaay')).to eq 1 }
  it { expect(AnagramPalindromeChecker.check('dooernedrn')).to eq 1 }
  it { expect(AnagramPalindromeChecker.check('oddorevennever')).to eq 1 }
  it { expect(AnagramPalindromeChecker.check('kino')).to eq 0 }
end
