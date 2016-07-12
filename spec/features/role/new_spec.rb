feature 'ロールの選択' do
  background do
    create_group('hoge_group')

    fill_in 'ホスト', with: 'hoge'
    fill_in 'ユーザ 1', with: 'foo'
    fill_in 'ユーザ 2', with: 'bar'
    fill_in 'ユーザ 3', with: 'piyo'
    fill_in 'ユーザ 4', with: 'fuga'
    click_button 'Start'

    check 'マーリン'
    find(:css, "#role_[value='arthur_subordinates1']").set true # アーサーの部下その1
    find(:css, "#role_[value='arthur_subordinates2']").set true # アーサーの部下その2
    check '暗殺者'
    find(:css, "#role_[value='mordred_subordinates1']").set true # モードレッドの手下その1
    click_button '決定'
  end

  scenario 'ゲーム画面に遷移する' do
    expect(page).to have_content 'game main page'
  end
end

