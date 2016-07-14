# feature 'ゲームを開始する' do
#   given(:group) { create(:group_with_users) }
#   given(:user1) { group.users[0] }
#   given(:user2) { group.users[1] }
# 
#   background do
#     using_session :user1 do
#       login(group.name, user1.name)
#     end
# 
#     using_session :user2 do
#       login(group.name, user2.name)
#     end
#   end
# 
#   feature 'ゲームの開始待ち状態' do
#     background do
#       using_session :user1 do
#         click_button '準備完了'
#       end
#     end
# 
#     scenario '準備完了した人数が1になる', js: true do
#       using_session :user1 do
#         expect(page).to have_content '1人'
#       end
# 
#       using_session :user2 do
#         expect(page).to have_content '1人'
#       end
#     end
# 
#     scenario '準備完了した人数が2になる', js: true do
#       using_session :user2 do
#         click_button '準備完了'
#       end
# 
#       using_session :user1 do
#         expect(page).to have_content '2人'
#       end
# 
#       using_session :user2 do
#         expect(page).to have_content '2人'
#       end
#     end
#   end
# end

