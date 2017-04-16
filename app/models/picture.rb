class Picture < ApplicationRecord

  validates :artist, presence: true
  validates :title, length: {in: 3..20}


  def self.newest_first
    Picture.order("created_at DESC")
  end

  def self.most_recent_six
    Picture.newest_first.limit(6)
  end



end
