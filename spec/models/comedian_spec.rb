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

      it 'should output correct statistics' do
        comedian_1 = Comedian.create(name: "Sally", age: 33, city: "New York")
        comedian_2 = Comedian.create(name: "Bill", age: 23, city: "LA")
        expect(Comedian.average_age).to eq 28
      end
    end
  end
end
