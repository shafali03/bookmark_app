require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("TRUNCATE bookmarks;")
ensure
  connection.close if connection
end

def add_url_to_database url
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("INSERT INTO bookmarks(url) VALUES('#{url}')")
ensure
  connection.close if connection
end
