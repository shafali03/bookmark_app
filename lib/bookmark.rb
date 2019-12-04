require 'pg'

class Bookmark
  attr_reader :title, :url
  def initialize(title, url)
    @title = title
    @url = url
  end

  def == other
    title == other.title && url == other.url
  end

  def self.all
    connect_to_database do |connection|
      rows = connection.exec("SELECT * FROM bookmarks;")
      rows.map { |row| Bookmark.new row['title'], row['url'] }
    end
  end

  def self.create title, url
    connect_to_database do |connection|
      connection.exec("INSERT INTO bookmarks(title, url) VALUES('#{title}', '#{url}')")
    end
  end

  def self.delete title, url
    connect_to_database do |connection|
      connection.exec("DELETE FROM bookmarks WHERE title='#{title}' AND url='#{url}'")
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
