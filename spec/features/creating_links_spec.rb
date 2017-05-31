feature 'Creating Links' do
  scenario 'User submits a link' do
    visit('/links/new')
    fill_in 'title', with: 'Google'
    fill_in 'url', with: 'http://www.google.co.uk'
    click_button('Add new bookmark')
    expect(page).to have_content('Google')
    expect(page).to have_content('http://www.google.co.uk')
  end
end
