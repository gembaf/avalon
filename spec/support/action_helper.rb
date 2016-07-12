module ActionHelper
  def create_group(group_name, capacity = 5)
    visit groups_path
    fill_in 'グループ名', with: group_name
    click_button capacity.to_s
  end
end

