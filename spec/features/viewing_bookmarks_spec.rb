feature "viewing bookmarks manager" do

  scenario "visiting the index page" do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end

  scenario "a user can see bookmarks" do
    add_url_to_database('http://www.makersacademy.com')
    add_url_to_database('http://www.destroyallsoftware.com')
    add_url_to_database('http://www.google.com')

    visit '/bookmarks'

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
