class Relationship < ApplicationRecord
  belongs_to :followings, class_name: "User"
  belongs_to :follower, class_name: "User"
end
