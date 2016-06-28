feature 'グループの登録' do
  background do
    visit groups_path
  end

  scenario '画面が表示される' do
    expect(page).to have_content 'グループ作成'
  end

  context 'グループを登録する' do
    background do
      fill_in 'グループ名', with: 'hoge_group'
      click_button '5'
    end

    scenario '参加者登録画面に遷移する' do
      expect(page).to have_content '参加者登録'
    end
  end
end

