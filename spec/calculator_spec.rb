require "calculator"

RSpec.describe Calculator, "#add" do
  context "with random integers" do
    it "sums them" do
      c = Calculator.new
      r = Random.new
      20.times {
        a = r.rand(999999)
        b = r.rand(999999)

        res = c.add(a, b)
        expect(res).to eq(a + b)
      }
    end
  end  
end