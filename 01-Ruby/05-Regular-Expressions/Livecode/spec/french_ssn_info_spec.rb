require_relative '../french_ssn_info'

describe 'french_ssn_info' do
  it "returns 'The number is invalid' when passed an empty string" do
    expect(french_ssn_info('')).to eq('The number is invalid')
  end

  it "returns 'The number is invalid' when passed '123'" do
    expect(french_ssn_info('123')).to eq('The number is invalid')
  end

  it "returns 'The number is invalid' when key is incorrect" do
    expect(french_ssn_info('184127645108947')).to eq('The number is invalid')
  end

  it "returns 'a man, born in December, 1984 in Seine-Maritime.' when passed '1 84 12 76 451 089 46'" do
    sentence = french_ssn_info('184127645108946')
    expect(sentence).to eq('a man, born in December, 1984 in Seine-Maritime.')
  end

  it "ignore whitespace" do
    sentence = french_ssn_info('1 84 12 76 451 089 46')
    expect(sentence).to eq('a man, born in December, 1984 in Seine-Maritime.')
  end
end
