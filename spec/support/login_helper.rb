module LoginHelper
  def login(group_name, user_name)
    visit root_path
    fill_in :group_name, with: group_name
    fill_in :user_name, with: user_name
    click_button 'Login'
  end
end

