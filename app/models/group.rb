class Group < ApplicationRecord
  has_many :users, dependent: :delete_all
  accepts_nested_attributes_for :users

  public_class_method

  def self.find_by_name(name)
    Group.where(name: name).first
  end
end

