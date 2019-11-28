class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments  #commnetsテーブルとのアソシエーション

  def self.search(search)
    
    # return Tweet.all unless search
    #   Tweet.where('text LIKE(?)' , "%#{search}%")
    # end

    if search
      Tweet.where('text LIKE(?)' , "%#{search}%")
    else
      Tweet.all
    end
  end
end
