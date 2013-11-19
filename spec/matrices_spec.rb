require "matrc"

describe Matrc::MatrizDensa do
   before :all do

     class MatEntero < Matrc::MatrizDensa
      def zero
        0
     end
    end

     class MatFraction < Matrc::MatrizDensa
      def zero
        Matrc::Fraction.new(0, 1)
    end
   end
end

describe "Matrices de enteros" do
   before :all do

    @m1 = MatEntero.new(2,2)
    @m2 = MatEntero.new(2,2)
    @m3 = MatEntero.new(2,2)
  

    @m1[0,0] = 1
    @m1[0,1] = 2
    @m1[1,0] = 3
    @m1[1,1] = 4

    @m2[0,0] = 2
    @m2[0,1] = 3
    @m2[1,0] = 4
    @m2[1,1] = 5

end
 
   it "Suma de dos matrices" do
     @m3[0,0] = 3
     @m3[0,1] = 5
     @m3[1,0] = 7
     @m3[1,1] = 9

     (@m1+@m2).should == @m3
    end

    it "Resta de dos matrices" do
      @m3[0,0] = -1
      @m3[0,1] = -1
      @m3[1,0] = -1
      @m3[1,1] = -1
    end

end

describe "Matrices con fracciones" do
   before :all do

    @m1 = MatFraction.new(2,2)
    @m2 = MatFraction.new(2,2)
    @m3 = MatFraction.new(2,2)

    @m1[0,0] = Matrc::Fraction.new(1, 4)
    @m1[0,1] = Matrc::Fraction.new(1, 4)
    @m1[1,0] = Matrc::Fraction.new(1, 4)
    @m1[1,1] = Matrc::Fraction.new(1, 4)

    @m2[0,0] = Matrc::Fraction.new(1, 4)
    @m2[0,1] = Matrc::Fraction.new(1, 4)
    @m2[1,0] = Matrc::Fraction.new(1, 4)
    @m2[1,1] = Matrc::Fraction.new(1, 4)
 
    end

    it "Multiplicacion de dos matrices" do

    @m3[0,0] = Matrc::Fraction.new(1, 8)
    @m3[0,1] = Matrc::Fraction.new(1, 8)
    @m3[1,0] = Matrc::Fraction.new(1, 8)
    @m3[1,1] = Matrc::Fraction.new(1, 8)

    end
end



	

end








