feature 'ロールの選択' do
  given(:group) { create(:group) }

  background do
    group.users << create(:user1, role_id: nil)
    group.users << create(:user2, role_id: nil)
    group.users << create(:user3, role_id: nil)
    group.users << create(:user4, role_id: nil)
    group.users << create(:user5, role_id: nil)

    visit role_path(group_name: group.name)

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

