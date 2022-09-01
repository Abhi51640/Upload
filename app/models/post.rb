class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :avatar
  
  def filter(filter)
    if filter
      @posts = Posts.where(category: filter)
    else
      @posts = Posts.all
    end
  end
end
