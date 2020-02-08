class Language < ApplicationRecord
  belongs_to :user,    optional: true
  has_many   :images,  dependent: :delete_all
  validates  :user_id, presence: true

  accepts_nested_attributes_for :images, allow_destroy: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :name
  belongs_to_active_hash :study

end
