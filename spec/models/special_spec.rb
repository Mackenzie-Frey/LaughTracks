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
    it 'should output average special run time' do
      Special.create(title: "Title 1", length: 30)
      Special.create(title: "Title 2", length: 40)
      Special.create(title: "Title 3", length: 50)
      expect(Special.average_length).to eq 40
    end
  end
end
