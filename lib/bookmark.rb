require 'pg'

class Bookmark
  def self.all
    connection = self.connect
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.add(url)
    connection = self.connect
    result = connection.exec("INSERT INTO bookmarks (url) VALUES ('#{url}');")
  end

  private

  def self.connect
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    return connection
  end
end
