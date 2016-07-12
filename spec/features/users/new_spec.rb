feature '参加者の登録' do
  background do
    create_group('hoge_group')
  end

  scenario '画面が表示される' do
    expect(page).to have_content '参加者登録'
  end

  feature '参加者登録のフォームの確認' do
    context '参加者が5人の場合' do
      scenario 'フォームが5個存在する' do
        expect(page).to have_content 'ホスト'
        expect(page).to have_content 'ユーザ 1'
        expect(page).to have_content 'ユーザ 2'
        expect(page).to have_content 'ユーザ 3'
        expect(page).to have_content 'ユーザ 4'
        expect(page).not_to have_content 'ユーザ 5'
      end
    end

    context '参加者が10人の場合' do
      background do
        create_group('hoge_group10', 10)
      end

      scenario 'フォームが10個存在する' do
        expect(page).to have_content 'ホスト'
        expect(page).to have_content 'ユーザ 9'
        expect(page).not_to have_content 'ユーザ 10'
      end
    end
  end

  feature '参加者を登録する' do
    background do
      fill_in 'ホスト', with: 'hoge'
      fill_in 'ユーザ 1', with: 'foo'
      fill_in 'ユーザ 2', with: 'bar'
      fill_in 'ユーザ 3', with: 'piyo'
      fill_in 'ユーザ 4', with: 'fuga'
      click_button 'Start'
    end

    scenario 'ロール選択画面に遷移する' do
      expect(page).to have_content 'ロール選択'
    end

    feature '参加者の登録ページヘ戻る' do
      background do
        visit users_path
      end

      scenario 'フォームが5個存在する' do
        expect(page).to have_content 'ユーザ 4'
        expect(page).not_to have_content 'ユーザ 5'
      end
    end
  end
end

