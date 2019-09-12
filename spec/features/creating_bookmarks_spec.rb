feature 'Adding bookmarks' do
  scenario 'new bookmark' do
    visit('/bookmarks')
    click_button 'Add +'
    fill_in 'url', :with => 'http://www.github.com'
    click_button 'Submit'
    expect(page).to have_content 'http://www.github.com'
  end
end
