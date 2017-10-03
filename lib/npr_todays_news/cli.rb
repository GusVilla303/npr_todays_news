class NprTodaysNews::CLI
  def run
    print_stories
  end

  def get_newslist
    puts "These are today's top stories on NPR:"
    puts
    NprTodaysNews::Scraper.new.scrape
  end

  def print_stories
    get_newslist.stories.each.with_index(1) do |story, index|
      puts "#{index}. #{story.title}"  #-- #{story.teaser}
      #binding.pry
    end
    puts
    get_user_input
  end

  def get_user_input
    puts "Please select the story number (#1-3) or type 'exit' to quit."
    input = gets.strip.to_i

    if input == 1
      puts "you chose the first story!"
    end

    #
  end


end
