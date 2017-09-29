class NprTodaysNews::CLI
  def run
    get_stories
  end

  def get_stories
    puts "These are today's top stories on NPR:"
    stories = NprTodaysNews::Scraper.new.scrape
    print_stories(stories)
  end

  def print_stories(stories)
    puts "Here are today's featured stories"
    stories.each do |story|
      story = Story.new
      puts "#{story.title}"
      puts "#{story.teaser}"
      puts "#{story.url}"
    end
  end
  # this is where I want to receive input from the user to loop through his/her options.



end
