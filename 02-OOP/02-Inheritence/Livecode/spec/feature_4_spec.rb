require "open3"

describe "Interface" do
  it 'should print out the sound of each animal make' do
    Open3.popen2('ruby ./interface.rb') do |i, o, th|
      result = o.read
      expect(result).to eq(
        "Simba roars\nNala roars\nTimon bark\nPumbaa grunt\n"
      )
    end
  end
end
