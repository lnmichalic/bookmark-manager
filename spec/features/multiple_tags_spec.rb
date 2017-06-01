feature 'Multiple Tags' do
  scenario 'User can specify Multiple tags when adding a new link' do
    visit('/links/new')
    fill_in 'title', with: 'Google'
    fill_in 'url', with: 'http://www.google.co.uk'
    fill_in 'tags', with: 'notbubbles, bubblybubbles'
    click_button('Add new bookmark')
    visit('/links/new')
    fill_in 'title', with: 'Yahoo'
    fill_in 'url', with: 'http://www.yahoo.com'
    fill_in 'tags', with: 'bubbles raketest'
    click_button('Add new bookmark')
    visit('/tags/bubbles')
    expect(page).to have_content('Yahoo')
    expect(page).not_to have_content('Google')
    visit('/tags/raketest')
    expect(page).to have_content('Yahoo')
    expect(page).not_to have_content('Google')
  end
end
