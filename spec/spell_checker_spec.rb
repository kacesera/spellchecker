require 'spell_check'

describe SpellCheck do

  describe "#check_spelling" do
    it "returns a string" do
      checker = SpellCheck.new("My spelling is great")
      expect(checker.check_spelling).to eq "My spelling is great"
    end

    it "returns the string with a misspelled word highlighted" do
      checker = SpellCheck.new("My spelling is gr8")
      expect(checker.check_spelling).to eq "My spelling is ~gr8~"
    end

    context "correctly is misspelled" do
      it "returns the string with 'correctly' highlighted" do
        checker = SpellCheck.new("These words are spelled correclty")
        expect(checker.check_spelling).to eq "These words are spelled ~correclty~"
      end
    end
  end
end