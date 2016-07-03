FactoryGirl.define do
  factory :group do
    name 'test_group'
    capacity 5

    factory :group_with_users do
      name 'test_group_with_users'
      users do
        [
          create(:user1),
          create(:user2),
          create(:user3),
          create(:user4),
          create(:user5)
        ]
      end
    end

    factory :group_with_max_role do
      name 'test_group_with_max_role'
      capacity 8
      users do
        [
          create(:user1),
          create(:user2),
          create(:user3),
          create(:user4),
          create(:user5),
          create(:user6),
          create(:user7),
          create(:user8)
        ]
      end
    end
  end
end

