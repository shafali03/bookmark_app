feature "so I can delete a url" do
  scenario "delete a bookmark from the database" do
    Bookmark.create "Makers", 'http://www.makersacademy.com'
    Bookmark.create "Destroyallsoftware", 'http://www.destroyallsoftware.com'
    Bookmark.create "Google",'http://www.google.com'

    visit "/bookmarks"
    within(".Makers") do
      click_button "Delete"
    end

    expect(page).not_to have_link "Makers", href: "http://www.makersacademy.com"
    expect(page).to have_link  "Destroyallsoftwar", href: "http://www.destroyallsoftware.com"
    expect(page).to have_link "Google", href: "http://www.google.com"
  end
end
