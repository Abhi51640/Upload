class Post < ApplicationRecord
  # validates :title, presence: true, uniqueness: true
  belongs_to :user, optional: true
  has_one_attached :avatar
  
  def filter(filter)
    if filter
      @posts = Posts.where(category: filter)
    else
      @posts = Posts.all
    end
  end
  # scope :posts, -> { Current.user.post.order(created_at: :desc)}
  # scope :products, -> { Current.site.import_histories.page.order(created_at: :desc).where(upload_type: 'products') }
  # scope :vendors, -> { Current.site.import_histories.page.order(created_at: :desc).where(upload_type: 'vendors') }
end