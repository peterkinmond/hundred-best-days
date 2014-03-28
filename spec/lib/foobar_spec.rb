require 'foobar'

describe FooBar do
  describe "foo" do
    it "returns bar" do
      test = FooBar.new
      expect(test.foo).to eq("bar")
    end
  end
end
