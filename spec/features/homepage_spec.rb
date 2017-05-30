feature 'Homepage' do
  scenario 'See list of links bookmarked on the homepage' do
    visit('/')
    expect(page).to have_content('Bookmarks')
  end
end 
