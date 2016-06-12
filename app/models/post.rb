class Post < ActiveRecord::Base
  has_many :replies
  validates :title, presence: { message: 'Title is blank..' }
end
