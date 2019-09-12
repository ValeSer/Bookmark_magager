require 'bookmark'

describe '.all' do
  it 'returns a list of bookmarks' do
    # Add the test data
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.facebook.com');")
    Bookmark.add("http://www.google.com")
    Bookmark.add("http://www.facebook.com")
    Bookmark.add("http://www.makersacademy.com")
    Bookmark.add("http://www.destroyallsoftware.com")
    bookmarks = Bookmark.all

    expect(bookmarks).to include "http://www.google.com"
    expect(bookmarks).to include "http://www.facebook.com"
    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
  end

  context '#add' do

    it "adds a bookmark" do
      url = 'http://test.com'
      Bookmark.add(url)
      expect(Bookmark.all).to include(url)
    end
  end

end
