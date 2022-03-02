require './ceasar_cipher'

describe CS do
  describe "#ceasar_cipher" do
    it "returns string sifted xy places" do
      cs = CS.new
      expect(cs.ceasar_cipher("abacd", 5)).to eql ("fgfhi")
    end
    
    it "returns string shifted xy places (lower cases)" do
      cs = CS.new
      expect(cs.ceasar_cipher("bcaqrsad", 35)).to eql("kljzabjm")
    end
    
    it "returns string shifted xy places (just capital cases)" do
      cs = CS.new
      expect(cs.ceasar_cipher("QZP", 21)).to eql("LUK")
    end

    it "returns string shifted xy places lower and upper cases" do
      cs = CS.new
      expect(cs.ceasar_cipher("ADszxdaskSDNQosld", 14)).to eql("ORgnlrogyGRBEcgzr")
    end
  end
end
