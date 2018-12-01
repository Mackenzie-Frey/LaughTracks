RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end
  describe 'Statistics' do
    it 'should output correct statistics for age & city list' do
      Comedian.create(name: "Sally", age: 33, city: "New York")
      Comedian.create(name: "Bill", age: 23, city: "L.A.")
      expect(Comedian.average_age).to eq 28
      Comedian.create(name: "Bob", age: 77, city: "L.A.")
      expect(Comedian.all_cities).to eq ["New York", "L.A."]
    end
  end
end
