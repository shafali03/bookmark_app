feature "viewing bookmarks manager" do

  scenario "visiting the index page" do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end

  scenario "a user can see bookmarks" do
    Bookmark.create "Makers", 'http://www.makersacademy.com'
    Bookmark.create "Destroyallsoftware", 'http://www.destroyallsoftware.com'
    Bookmark.create "Google",'http://www.google.com'

    visit '/bookmarks'

    expect(page).to have_link "Makers", href: "http://www.makersacademy.com"
    expect(page).to have_link  "Destroyallsoftwar", href: "http://www.destroyallsoftware.com"
    expect(page).to have_link "Google", href: "http://www.google.com"
  end
end
