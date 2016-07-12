feature 'ログインする' do
  given(:group) { create(:group_with_users) }
  given(:user1) { group.users[0] }
  given(:user2) { group.users[1] }

  context '存在しないグループでログインした場合' do
    background do
      login('hogehoge', user1.name)
    end

    scenario 'ログインに失敗する', js: true do
      expect(page).to have_content 'ログイン'
    end
  end

  context '存在しないユーザでログインした場合' do
    background do
      login(group.name, 'hogehoge')
    end

    scenario 'ログインに失敗する', js: true do
      expect(page).to have_content 'ログイン'
    end
  end

  context 'user1としてログインした場合' do
    background do
      login(group.name, user1.name)
    end

    scenario 'user1と表示される' do
      expect(page).to have_content user1.name
    end
  end

  context 'user2としてログインした場合' do
    background do
      login(group.name, user2.name)
    end

    scenario 'user2と表示される' do
      expect(page).to have_content user2.name
    end
  end
end

