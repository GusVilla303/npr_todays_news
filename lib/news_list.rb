class NewsList
  attr_accessor :stories, :date

  def initialize
    @stories = []
  end

  def add_story(story)
    if !story.is_a?(Story)
      puts "Not a Story object"
    else
      @stories << story
    end
  end

  def self.all
    @stories
  end

end
