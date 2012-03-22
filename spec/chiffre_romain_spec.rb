require "chiffre_romain"

describe ChiffreRomain do
  before (:each) do
    @chiffre_romain = ChiffreRomain.new
  end
  
  describe "decomposition" do
    it "devrait afficher ce tableau " do
      @chiffre_romain.decomposition(300).should == [0,0,0,0,3,0,0,0,0,0,0,0]
    end 
    it "devrait afficher ce tableau " do
      @chiffre_romain.decomposition(1427).should == [1,0,0,1,0,0,0,2,0,1,0,2]
    end 
    it "devrait afficher ce tableau " do
      @chiffre_romain.decomposition(1500).should == [1,0,1,0,0,0,0,0,0,0,0,0]
    end 
  end
 
  describe "le_chiffre_romain " do
    it "devrait afficher CCC " do
      @chiffre_romain.le_chiffre_romain(300).should == 'CCC'
    end 
    it "devrait afficher MCDXXVII" do
      @chiffre_romain.le_chiffre_romain(1427).should == 'MCDXXVII'
    end 
    it "devrait afficher MD" do
      @chiffre_romain.le_chiffre_romain(1500).should == 'MD'
    end 
    it "devrait afficher DCCCXLIX " do
      @chiffre_romain.le_chiffre_romain(849).should == 'DCCCXLIX'
    end 
    it "devrait afficher DCCCXLIX  " do
      @chiffre_romain.le_chiffre_romain(999).should == 'CMXCIX'
    end     
  end  
end





