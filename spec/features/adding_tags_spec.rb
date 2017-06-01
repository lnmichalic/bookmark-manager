feature 'Add Tags' do
  scenario 'When adding links you can add a tag' do
    visit('/links/new')
    fill_in 'title', with: 'Google'
    fill_in 'url', with: 'http://www.google.co.uk'
    fill_in 'tags', with: 'search engine'
    click_button('Add new bookmark')
    expect(page).to have_content('search engine')
  end
end
