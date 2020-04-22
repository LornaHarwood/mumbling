require_relative './spec_helper.rb'
require_relative '../lib/mumbling.rb'

describe Mumbling do
  describe '#accum' do
    let(:string) { "a" }
    it 'returns letter as upcase' do
      result = Mumbling.new
      expect(result.accum(string)).to eq "A"
    end
  end
end

# takes a string
# splits it into each letter
# capitialize the letter
# then every iteration, add one extre lower case letter that matches, adding one more each time
# "abcde" = "A-Bc-Ccc-Dddd-Eeeee"
# join together with the dashes
# letter can be lower case or upper case - treated the same - returned as upper case
