class User < ApplicationRecord
  belongs_to :group

  public_class_method

  def self.find_by_name(name)
    User.where(name: name).first
  end
end

