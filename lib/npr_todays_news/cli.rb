class NprTodaysNews::CLI
  def run
    get_stories
  end

  def get_stories
    puts "These are today's top stories on NPR:"
    NprTodaysNews::Scraper.new.scrape
  end
  # this is where I want to receive input from the user to loop through his/her options.



end
