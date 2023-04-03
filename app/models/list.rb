class List < ApplicationRecord
    # 仕様を宣言
  has_one_attached :image
  
    # バリデーション
    validates(:title, presence: true)
    validates(:body, presence: true)
    validates(:image, presence: true)
end
