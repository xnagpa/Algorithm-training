require 'spec_helper'

describe BracketsValidator do
  it { expect(BracketsValidator.validate('((()))')).to eq 1 }
  it { expect(BracketsValidator.validate('((())')).to eq 0 }
  it { expect(BracketsValidator.validate(')))))))')).to eq 0 }
  it { expect(BracketsValidator.validate(')))))))(((((())))))')).to eq 0 }
  it { expect(BracketsValidator.validate('()()')).to eq 1 }
end
