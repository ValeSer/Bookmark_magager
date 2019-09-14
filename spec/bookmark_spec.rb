require 'bookmark'

describe 'Bookmark' do
  context '.all' do
    it 'returns a list of bookmarks' do
      # Add the test data
      bookmark1 = Bookmark.add(url: 'http://www.google.com', title: 'Google')
      bookmark2 = Bookmark.add(url: 'http://www.facebook.com', title: 'Facebook')
      bookmark3 = Bookmark.add(url: 'http://www.makersacademy.com', title: 'Makers')
      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks[0].title).to eq bookmark1.title
      expect(bookmarks[0].url).to eq bookmark1.url
      expect(bookmarks[1].title).to eq bookmark2.title
      expect(bookmarks[1].url).to eq bookmark2.url
      expect(bookmarks[2].title).to eq bookmark3.title
      expect(bookmarks[2].url).to eq bookmark3.url
    end
  end

  context '.add' do
    it "adds a bookmark" do
      URL = 'http://test.com'
      TITLE = 'Test'
      bookmark = Bookmark.add(url: URL, title: TITLE)
      saved_bookmark = get_bookmark_by_id(id: bookmark.id)
      expect(bookmark.title).to eq TITLE
      expect(bookmark.url).to eq URL
      expect(bookmark.title).to eq saved_bookmark['title']
      expect(bookmark.url).to eq saved_bookmark['url']
    end
  end
end
