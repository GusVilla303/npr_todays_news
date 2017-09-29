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

  def print_stories
    @stories.each.with_index(1) do |story, index|
      puts "#{index}. #{story}"
    end
  end

end
