feature "viewing bookmarks" do
  scenario "visiting bookmark page" do
    visit '/bookmarks'
    expect(page).to have_content('bookmarks')
  end
end