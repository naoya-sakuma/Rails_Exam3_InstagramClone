class Favorite < ApplicationRecord
  belongs_to :User
  belongs_to :picture
end
