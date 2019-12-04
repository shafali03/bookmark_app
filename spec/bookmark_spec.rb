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

  describe '.delete' do
    it 'deletes a url' do
      Bookmark.create "Makers", 'Makers_url'
      Bookmark.create "Destroyallsoftware", 'destroy_url'

      Bookmark.delete "Makers", "Makers_url"

      bookmarks = Bookmark.all

      expect(bookmarks).not_to include(Bookmark.new "Makers", "Makers_url")
      expect(bookmarks).to include(Bookmark.new "Destroyallsoftware", "destroy_url")
    end
  end
end
