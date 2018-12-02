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
    context 'When viewing all comedians'
      it 'should output correct statistics for age & city list' do
        Comedian.create(name: "Sally", age: 33, city: "New York")
        Comedian.create(name: "Bill", age: 23, city: "L.A.")
        expect(Comedian.average_age).to eq 28

        Comedian.create(name: "Bob", age: 77, city: "L.A.")
        expect(Comedian.all_cities).to eq ["New York", "L.A."]
      end
    context 'When viewing comedians matching an age' do
      it 'should ouput correct statistics' do
        comedian_1 = Comedian.create(name: "Sally", age: 33, city: "Philly")
        comedian_2 = Comedian.create(name: "Bob", age: 34, city: "New York")
        comedian_3 = Comedian.create(name: "Bill", age: 34, city: "LA")
        comedian_4 = Comedian.create(name: "Joe", age: 20, city: "Denver")

        comedian_1.specials.create(title: "Title 1", length: 30)
        comedian_2.specials.create(title: "Title 2", length: 40)
        comedian_3.specials.create(title: "Title 3", length: 25)
        comedian_4.specials.create(title: "Title 4", length: 50)

        visit '/comedians?age=34'

        expect(Comedian.average_age).to eq 34
        expect(Comedian.all_cities).to eq ["New York", "L.A."]
      end
    end
  end
end
