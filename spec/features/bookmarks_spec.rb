require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    bookmark1 = Bookmark.add(url: 'http://www.makersacademy.com', title: 'Makers')
    bookmark2 = Bookmark.add(url: 'http://www.google.com', title: 'Google')
    bookmark3 = Bookmark.add(url: 'http://www.facebook.com', title: 'Facebook')

    visit('/bookmarks')
    expect(page).to have_link(bookmark1.title, href: bookmark1.url)
    expect(page).to have_link(bookmark2.title, href: bookmark2.url)
    expect(page).to have_link(bookmark3.title, href: bookmark3.url)
  end
end
