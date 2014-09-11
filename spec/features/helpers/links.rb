  def add_link(url, title, tags= [])
    within('#new-link')do
      fill_in "url", with: url
      fill_in "title", with: title
      fill_in 'tags', with: tags.join(' ')
      click_button 'Add link'
    end
  end
