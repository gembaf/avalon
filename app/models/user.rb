class User < ApplicationRecord
  belongs_to :group

  def role
    @role ||= CharactorList.all[role_id.to_sym]
  end

  public_class_method

  def self.find_by_name(name)
    User.where(name: name).first
  end
end

