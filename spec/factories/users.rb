FactoryGirl.define do
  factory :user do
    association :group, factory: :group

    factory :user1 do
      name 'user1'
      role_id 'merlin'
    end

    factory :user2 do
      name 'user2'
      role_id 'percival'
    end

    factory :user3 do
      name 'user3'
      role_id 'arthur_subordinates'
    end

    factory :user4 do
      name 'user4'
      role_id 'assassin'
    end

    factory :user5 do
      name 'user5'
      role_id 'mordred'
    end

    factory :user6 do
      name 'user6'
      role_id 'morgana'
    end

    factory :user7 do
      name 'user7'
      role_id 'oberon'
    end

    factory :user8 do
      name 'user8'
      role_id 'mordred_subordinates'
    end
  end
end

