class Language < ApplicationRecord
  belongs_to :user,    optional: true
  validates  :user_id, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :name
  belongs_to_active_hash :study

  def self.search(search)
    return Language.all unless search
    Language.where(['tittle LIKE ?', "%#{search}%"])
  end

end
