RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a title' do
        special = Special.create(length: 30)
        expect(special).to_not be_valid
      end
      it 'should be invalid if missing a length' do
        special = Special.create(title: "Title")
        expect(special).to_not be_valid
      end
    end
  end
  describe 'Visiting the Index Page' do
    describe 'Statistics' do
      it 'should output an average run time & special count' do
        comedian_1 = Comedian.create(name: 'Sally', age: 33, city: 'New York')
        comedian_2 = Comedian.create(name: 'Bob', age: 34, city: 'New York')
        comedian_3 = Comedian.create(name: 'Bill', age: 34, city: 'LA')
        comedian_4 = Comedian.create(name: 'Joe', age: 20, city: 'LA')

        comedian_1.specials.create(title: 'Title 1', length: 30)
        comedian_2.specials.create(title: 'Title 2', length: 40)
        comedian_3.specials.create(title: 'Title 3', length: 25)
        comedian_4.specials.create(title: 'Title 4', length: 50)

        expect(Special.average_length).to eq 36.25
        expect(comedian_1.specials.count).to eq 1
      end
    end
  end
end
