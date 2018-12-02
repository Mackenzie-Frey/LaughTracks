RSpec.describe 'As a visitor' do
  it 'allows user to create a comedian' do
    visit '/comedians/new'

    fill_in 'comedian[name]', with: 'Sandra'
    fill_in 'comedian[age]', with: 24
    fill_in 'comedian[city]', with: 'Philly'

    click_button 'Submit'

    expect(current_path).to eq('/comedians')
    expect(page).to have_content('Sandra')
    expect(page).to have_content(24)
    expect(page).to have_content('Philly')
  end
end
