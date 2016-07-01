class Group < ApplicationRecord
  has_many :users, dependent: :delete_all
  accepts_nested_attributes_for :users

  def distribute_role(role_ids)
    users.zip(role_ids).each do |user, role_id|
      user.update(role_id: role_id)
    end
  end

  public_class_method

  def self.find_by_name(name)
    Group.where(name: name).first
  end
end

