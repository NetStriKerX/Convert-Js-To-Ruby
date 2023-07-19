require './test.rb'

RSpec.describe Test do
  it "Find the largest value obtained by permutations of digits." do
    t = Test.new
    expect(t.largest_val(234)).to eq(432)
  end
  it "Find the largest value obtained by permutations of digits." do
    t = Test.new
    expect(t.largest_val(454)).to eq(544)
  end
  it "Find the largest value obtained by permutations of digits." do
    t = Test.new
    expect(t.largest_val(287)).to eq(872)
  end
  it "Find the largest value obtained by permutations of digits." do
    t = Test.new
    expect(t.largest_val(295)).to eq(952)
  end
  it "Find the largest value obtained by permutations of digits." do
    t = Test.new
    expect(t.largest_val(618)).to eq(861)
  end
 end
