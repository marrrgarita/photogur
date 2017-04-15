class Picture < ApplicationRecord

  def self.newest_first
    Picture.order("created_at DESC")
  end

  def self.most_recent_six
    Picture.newest_first.limit(6)
  end



end
