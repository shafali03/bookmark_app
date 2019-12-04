require 'pg'

class Bookmark
  def self.all
    connect_to_database do |connection|
      result = connection.exec("SELECT * FROM bookmarks;")
      result.map { |bookmark| bookmark['url'] }
    end
  end

  def self.create url
    connect_to_database do |connection|
      connection.exec("INSERT INTO bookmarks(url) VALUES('#{url}')")
    end
  end

  private

  def self.connect_to_database
    dbname = ENV['RACK_ENV'] == 'test' ? 'bookmark_manager_test' : 'bookmark_manager'
    connection = PG.connect(dbname: dbname)

    yield connection if block_given?
  ensure
    connection.close if connection
  end
end
