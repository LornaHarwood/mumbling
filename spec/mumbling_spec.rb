require_relative './spec_helper.rb'
require_relative '../lib/mumbling.rb'

describe Mumbling do
  describe '#accum' do
    it "returns a letter" do
      result = Mumbling.new
      expect(result.accum("a")).to eq "A"
    end
    it 'returns letter number of times based on index position' do
      result = Mumbling.new
      expect(result.accum("ab")).to eq "A-Bb"
    end
    it 'returns letter number of times based on index position up to 10 indexes' do
      result = Mumbling.new
      expect(result.accum("abcdefghij")).to eq "A-Bb-Ccc-Dddd-Eeeee-Ffffff-Ggggggg-Hhhhhhhh-Iiiiiiiii-Jjjjjjjjjj"
    end
  end
end
