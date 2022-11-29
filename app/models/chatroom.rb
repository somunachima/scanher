class Chatroom < ApplicationRecord
  belongs_to :clinic
  has_many :messages
end
