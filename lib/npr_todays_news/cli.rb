class NprTodaysNews::CLI
  def run
    get_newslist
    print_stories
  end

  def get_newslist
    puts "These are today's top stories on NPR:"
    NprTodaysNews::Scraper.new.scrape
  end

  def print_stories
    get_newslist.stories.each.with_index(1) do |story, index|
      puts "#{index}. #{story.title} -- #{story.teaser}"
    end
  end


  # this is where I want to receive input from the user to loop through his/her options.



end
