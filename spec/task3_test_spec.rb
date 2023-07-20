require './test.rb'

RSpec.describe Test do

  let(:instance) { described_class.new }

  it 'returns the longest possible string without 3 consecutive same characters, and satisfies the size condition' do
    result = instance.longest_possible_string(5, 3, 2)
    expect(result).not_to include('aaa', 'bbb', 'ccc')
    expect(result.length).to eq(10)
    expect(result.count('a')).to eq(5)
    expect(result.count('b')).to eq(3)
    expect(result.count('c')).to eq(2)
  end
  it 'returns the longest possible string without 3 consecutive same characters, and satisfies the size condition' do
    result = instance.longest_possible_string(2, 10, 1)
    expect(result).not_to include('aaa', 'bbb', 'ccc')
    expect(result.length).to eq(11)
    expect(result.count('a')).to eq(2)
    expect(result.count('b')).to eq(8)
    expect(result.count('c')).to eq(1)
  end
  it 'returns the longest possible string without 3 consecutive same characters, and satisfies the size condition' do
    result = instance.longest_possible_string(4, 2, 2)
    expect(result).not_to include('aaa', 'bbb', 'ccc')
    expect(result.length).to eq(8)
    expect(result.count('a')).to eq(4)
    expect(result.count('b')).to eq(2)
    expect(result.count('c')).to eq(2)
  end
  it 'returns the longest possible string without 3 consecutive same characters, and satisfies the size condition' do
    result = instance.longest_possible_string(5, 3, 0)
    expect(result).not_to include('aaa', 'bbb', 'ccc')
    expect(result.length).to eq(8)
    expect(result.count('a')).to eq(5)
    expect(result.count('b')).to eq(3)
    expect(result.count('c')).to eq(0)
  end
  it 'returns the longest possible string without 3 consecutive same characters, and satisfies the size condition' do
    result = instance.longest_possible_string(4, 20, 2)
    expect(result).not_to include('aaa', 'bbb', 'ccc')
    expect(result.length).to eq(20)
    expect(result.count('a')).to eq(4)
    expect(result.count('b')).to eq(14)
    expect(result.count('c')).to eq(2)
  end
  
 end
