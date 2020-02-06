class Language < ApplicationRecord
  belongs_to :user
  has_one    :study
  has_many   :images
end
