feature '他のユーザのロールを表示する' do
  given(:group) { create(:group_with_max_role) }

  background do
    login(group.name, user.name)
  end

  shared_examples_for '邪悪陣営のexample' do
    scenario 'oberon以外がmordred_subordinatesと表示される' do
      within('table') do
        expect(page).not_to have_content CharactorBase::MERLIN
        expect(page).not_to have_content CharactorBase::PERCIVAL
        expect(page).not_to have_content CharactorBase::ARTHUR_SUBORDINATES
        expect(page).not_to match CharactorBase::MORDRED
        expect(page).not_to have_content CharactorBase::MORGANA
        expect(page).not_to have_content CharactorBase::OBERON
        expect(page).to have_content CharactorBase::MORDRED_SUBORDINATES, count: 3
      end
    end
  end

  context 'merlinとしてログインした場合' do
    given(:user) { group.users[0] }

    scenario '邪悪陣営がmordred_subordinatesと表示される' do
      within('table') do
        expect(page).not_to have_content CharactorBase::MERLIN
        expect(page).not_to have_content CharactorBase::PERCIVAL
        expect(page).not_to have_content CharactorBase::ARTHUR_SUBORDINATES
        expect(page).not_to match CharactorBase::MORDRED
        expect(page).not_to have_content CharactorBase::MORGANA
        expect(page).not_to have_content CharactorBase::OBERON
        expect(page).to have_content CharactorBase::MORDRED_SUBORDINATES, count: 4
      end
    end
  end

  context 'percivalとしてログインした場合' do
    given(:user) { group.users[1] }

    scenario 'merlinが表示される' do
      within('table') do
        expect(page).to have_content CharactorBase::MERLIN, count: 2
        expect(page).not_to have_content CharactorBase::PERCIVAL
        expect(page).not_to have_content CharactorBase::ARTHUR_SUBORDINATES
        expect(page).not_to match CharactorBase::MORDRED
        expect(page).not_to have_content CharactorBase::MORGANA
        expect(page).not_to have_content CharactorBase::OBERON
        expect(page).not_to have_content CharactorBase::MORDRED_SUBORDINATES
      end
    end
  end

  context 'arthur_subordinatesとしてログインした場合' do
    given(:user) { group.users[2] }

    scenario '何も表示されない' do
      within('table') do
        expect(page).not_to have_content CharactorBase::MERLIN
        expect(page).not_to have_content CharactorBase::PERCIVAL
        expect(page).not_to have_content CharactorBase::ARTHUR_SUBORDINATES
        expect(page).not_to match CharactorBase::MORDRED
        expect(page).not_to have_content CharactorBase::MORGANA
        expect(page).not_to have_content CharactorBase::OBERON
        expect(page).not_to have_content CharactorBase::MORDRED_SUBORDINATES
      end
    end
  end

  context 'assassinとしてログインした場合' do
    given(:user) { group.users[3] }
    it_should_behave_like '邪悪陣営のexample'
  end

  context 'mordredとしてログインした場合' do
    given(:user) { group.users[4] }
    it_should_behave_like '邪悪陣営のexample'
  end

  context 'morganaとしてログインした場合' do
    given(:user) { group.users[5] }
    it_should_behave_like '邪悪陣営のexample'
  end

  context 'oberonとしてログインした場合' do
    given(:user) { group.users[6] }

    scenario '何も表示されない' do
      within('table') do
        expect(page).not_to have_content CharactorBase::MERLIN
        expect(page).not_to have_content CharactorBase::PERCIVAL
        expect(page).not_to have_content CharactorBase::ARTHUR_SUBORDINATES
        expect(page).not_to match CharactorBase::MORDRED
        expect(page).not_to have_content CharactorBase::MORGANA
        expect(page).not_to have_content CharactorBase::OBERON
        expect(page).not_to have_content CharactorBase::MORDRED_SUBORDINATES
      end
    end
  end

  context 'mordred_subordinatesとしてログインした場合' do
    given(:user) { group.users[7] }
    it_should_behave_like '邪悪陣営のexample'
  end
end

