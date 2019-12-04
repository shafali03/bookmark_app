feature "so I can remember sites" do
  scenario "add a bookmark to the database" do
    visit '/bookmarks'
    click_button 'Add Bookmark'
    fill_in 'title', with: 'Facebook'
    fill_in 'url', with: 'www.facebook.com'
    click_button 'Add'
    expect(page).to have_link 'Facebook', href: 'www.facebook.com'
  end
end
