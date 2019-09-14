feature 'Adding bookmarks' do
  scenario 'new bookmark' do
    URL = 'http://www.github.com'
    TITLE = 'Github'
    visit('/bookmarks')
    click_button 'Add +'
    fill_in 'url', :with => URL
    fill_in 'title', :with => TITLE
    click_button 'Submit'
    expect(page).to have_link(TITLE, href: URL)
  end
end
