describe '.all' do
  it 'returns a list of bookmarks' do
    bookmarks = Bookmark.all

    expect(bookmarks).to include "http://www.google.com"
    expect(bookmarks).to include "http://www.facebook.com"
  end
end
