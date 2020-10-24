class Post < ApplicationRecord

  has_many_attached :images,dependent: :destroy
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :text,        presence: { message: 'を入力してください' }
  validates :images,       presence: { message: 'を1枚以上添付してください' }  

end
