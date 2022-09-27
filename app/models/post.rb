class Post < ApplicationRecord
  # validates :title, presence: true, uniqueness: true
  has_one_attached :avatar  do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
  has_many :sharedfiles
  belongs_to :user, optional: true
  
  def filter(filter)
    if filter
      @posts = Posts.where(category: filter)
    else
      @posts = Posts.all
    end
  end
end