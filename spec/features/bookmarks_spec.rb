feature 'View bookmarks' do
  scenario 'Store bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.facebook.com'
  end
end
