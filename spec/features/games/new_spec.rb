feature 'ログインする' do
  given(:group) { Group.create(name: 'hoge_group', capacity: 5) }

  background do
    group.users << User.create(name: 'hoge')
    group.users << User.create(name: 'foo')
    group.users << User.create(name: 'bar')
    group.users << User.create(name: 'piyo')
    group.users << User.create(name: 'fuga')
    visit root_path
  end

  context 'hogeユーザとしてログインした場合' do
    background do
      fill_in :group_name, with: 'hoge_group'
      fill_in :user_name, with: 'hoge'
      click_button 'Login'
    end

    scenario 'hogeと表示される' do
      expect(page).to have_content 'hoge'
    end
  end

  context 'fugaユーザとしてログインした場合' do
    background do
      fill_in :group_name, with: 'hoge_group'
      fill_in :user_name, with: 'fuga'
      click_button 'Login'
    end

    scenario 'fugaと表示される' do
      expect(page).to have_content 'fuga'
    end
  end
end

