feature 'ゲームのセッティング' do
  background do
    visit root_path
  end

  scenario '画面が表示される' do
    expect(page).to have_content 'game setting page'
  end

  context 'ゲームを開始する' do
    background do
      fill_in 'name[0]', with: 'hoge'
      fill_in 'name[1]', with: 'foo'
      fill_in 'name[2]', with: 'bar'
      fill_in 'name[3]', with: 'piyo'
      fill_in 'name[4]', with: 'fuga'
      click_button 'Start'
    end

    scenario 'ゲーム画面に遷移する' do
      expect(page).to have_content 'game main page'
    end

    scenario '参加者の名前が表示される' do
      expect(page).to have_content 'hoge'
      expect(page).to have_content 'foo'
      expect(page).to have_content 'bar'
      expect(page).to have_content 'piyo'
      expect(page).to have_content 'fuga'
    end
  end
end

