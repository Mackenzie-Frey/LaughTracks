RSpec.describe "Comedian Index Page" do
  describe "Visiting the Index Page" do
    it "should display comedian information" do
      comedian_1 = Comedian.create(name: "Sally", age: 33, city: "New York")
      comedian_2 = Comedian.create(name: "Bill", age: 23, city: "LA")
      visit '/comedians'
      within "#comedian-#{comedian_1.id}" do
        expect(page).to have_content(comedian_1.name)
        expect(page).to have_content("Age: #{comedian_1.age}")
        expect(page).to have_content(comedian_1.city)
      end
      within "#comedian-#{comedian_2.id}" do
        expect(page).to have_content(comedian_2.name)
        expect(page).to have_content("Age: #{comedian_2.age}")
        expect(page).to have_content(comedian_2.city)
      end
    end

    it "should display special information" do
      comedian_1 = Comedian.create(name: "Sally", age: 33, city: "New York")
      special = comedian_1.specials.create(title: "This Special", length: 56, photo: "dfkddjj")
      special_2 = comedian_1.specials.create(title: "New Special", length: 54, photo: "ttddjj")
      visit '/comedians'
      within "#comedian-#{comedian_1.id}" do
        expect(page).to have_content(special.title)
        expect(page).to have_content("Length: #{special.length}")
        expect(page).to have_css("img[src='#{special.photo}']")
        expect(page).to have_content(special_2.title)
        expect(page).to have_content("Length: #{special_2.length}")
        expect(page).to have_css("img[src='#{special_2.photo}']")
        expect(page).to have_content("Total Specials: #{comedian_1.specials.count}")
      end
    end

    it "should display an area at the top of the page called statistics" do
      Comedian.create(name: "Sally", age: 33, city: "New York")
      Comedian.create(name: "Bill", age: 23, city: "L.A.")
      visit '/comedians'
      within "#statistics" do
        expect(page).to have_content("Statistics")
        expect(page).to have_content("Average Age of Comedians: #{Comedian.average_age.to_i} years old")
        expect(page).to have_content("All Cities: #{Comedian.all_cities.join(", ")}")
        expect(page).to have_content("Average TV Special Run Time: #{Special.average_length.to_i} minutes")
        expect(page).to have_content("Total TV Specials: #{Special.count}")
      end
    end

  end
end
