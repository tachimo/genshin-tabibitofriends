class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :boards, dependent: :destroy
  has_many :comments, dependent: :destroy
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "crypted_password", "email", "id", "introduction", "name", "player_uid", "salt", "updated_at", "world_rank"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["boards"]
  end

  def own?(object)
    id == object.user_id
  end
end
