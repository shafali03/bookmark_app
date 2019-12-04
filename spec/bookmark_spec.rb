require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      add_url_to_database('http://www.makersacademy.com')
      add_url_to_database('http://www.destroyallsoftware.com')
      add_url_to_database('http://www.google.com')

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end
