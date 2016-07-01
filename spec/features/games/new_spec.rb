feature 'ログインする' do
  given(:group) { create(:group_with_users) }
  given(:user1) { group.users[0] }
  given(:user2) { group.users[1] }

  background do
    visit root_path
  end

  context 'user1としてログインした場合' do
    background do
      fill_in :group_name, with: group.name
      fill_in :user_name, with: user1.name
      click_button 'Login'
    end

    scenario 'user1と表示される' do
      expect(page).to have_content user1.name
    end
  end

  context 'user2としてログインした場合' do
    background do
      fill_in :group_name, with: group.name
      fill_in :user_name, with: user2.name
      click_button 'Login'
    end

    scenario 'user2と表示される' do
      expect(page).to have_content user2.name
    end
  end
end

