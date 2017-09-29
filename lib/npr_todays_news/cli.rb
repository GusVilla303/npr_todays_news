class NprTodaysNews::CLI
  def run
    get_stories
  end

  def get_stories
    puts "These are today's top stories on NPR:"
    news_list = NprTodaysNews::Scraper.new.scrape
    print_stories(news_list)
  end

  def print_stories(news_list)
    news_list.stories.each.with_index(1) do |story, index|
      puts "#{index}. #{story.title} -- #{story.teaser}"
    end
  end


  # this is where I want to receive input from the user to loop through his/her options.



end
