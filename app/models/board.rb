# == Schema Information
#
# Table name: boards
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  # validates(:title, presence: true)
  validates(:body, presence: true)
  # validates(:expires_on, presence:true)
  # validates(:board_id, presence:true)

  has_many(:posts, class_name: "Post", foreign_key: "board_id", primary_key: "id")
end
