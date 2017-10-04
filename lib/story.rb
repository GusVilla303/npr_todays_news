class Story

  attr_accessor :title, :teaser, :url

  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
