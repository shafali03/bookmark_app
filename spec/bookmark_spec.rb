require 'bookmark'

describe Bookmark do
  describe '.create and .all' do
    it 'returns all bookmarks' do
      Bookmark.create "Makers", 'http://www.makersacademy.com'
      Bookmark.create "Destroyallsoftware", 'http://www.destroyallsoftware.com'
      Bookmark.create "Google", 'http://www.google.com'

      bookmarks = Bookmark.all

      expect(bookmarks).to include(Bookmark.new "Makers", "http://www.makersacademy.com")
      expect(bookmarks).to include(Bookmark.new "Destroyallsoftware", "http://www.destroyallsoftware.com")
      expect(bookmarks).to include(Bookmark.new "Google", "http://www.google.com")
    end
  end
end
