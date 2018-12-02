RSpec.describe "Comedian of Specific Age" do
  context "When a user visits /comedians?age=34" do
    it "shows information about matching comedians & their stats" do
      comedian_1 = Comedian.create(name: "Sally", age: 33, city: "New York")
      comedian_2 = Comedian.create(name: "Bob", age: 34, city: "New York")
      comedian_3 = Comedian.create(name: "Bill", age: 34, city: "LA")
      comedian_4 = Comedian.create(name: "Joe", age: 20, city: "LA")

      comedian_1.specials.create(title: "Title 1", length: 30)
      comedian_2.specials.create(title: "Title 2", length: 40)
      comedian_3.specials.create(title: "Title 3", length: 25)
      comedian_4.specials.create(title: "Title 4", length: 50)

      visit "/comedians?age=34"

      expect(page).to have_content(comedian_2.name)
      expect(page).to have_content(comedian_3.name)
      expect(page).not_to have_content(comedian_1.name)
      expect(page).not_to have_content(comedian_4.name)
      expect(page).to have_content(comedian_2.specials.name)
      expect(page).to have_content("Average Age of Comedians: 34 years old")
      expect(page).to have_content(Comedian.all_cities.join(", "))
    end
  end
end
