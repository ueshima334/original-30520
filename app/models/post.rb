class Post < ApplicationRecord

  has_many_attached :images
  belongs_to :user

  validates :text,        presence: { message: 'を入力してください' }

end
