require 'spell_check'

describe SpellCheck do

  describe "#check_spelling" do
    it "returns a string" do
      checker = SpellCheck.new("My spelling is great!")
      expect(checker.check_spelling).to eq "My spelling is great!"
    end
  end
end