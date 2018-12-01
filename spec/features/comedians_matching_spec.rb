RSpec.describe "Comedian of Specific Age" do
  context "When a user visits /comedians?age=34" do
    it "shows information about matching comedians" do
      comedian_1 = Comedian.create(name: "Sally", age: 33, city: "New York")
      comedian_2 = Comedian.create(name: "Bob", age: 34, city: "New York")
      comedian_3 = Comedian.create(name: "Bill", age: 34, city: "LA")
      comedian_4 = Comedian.create(name: "Joe", age: 20, city: "LA")

      visit "/comedians?age=34"

      expect(page).to have_content(comedian_2.name)
      expect(page).to have_content(comedian_3.name)
      expect(page).not_to have_content(comedian_1.name)
      expect(page).not_to have_content(comedian_4.name)
    end
  end
end
