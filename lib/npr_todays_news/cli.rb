class NprTodaysNews::CLI

  @@scraper = ""

  def run
    print_stories
  end

  def get_newslist
    puts "These are today's top stories on NPR:"
    puts
    @scraper = NprTodaysNews::Scraper.new
    @scraper.scrape_featured_stories
  end

  def print_stories
    get_newslist.stories.each.with_index(1) do |story, index|
      puts "#{index}. #{story.title}"  #-- #{story.teaser}
    end
    puts ""
    puts "Please select the story number (#1-3) or type 'exit' to quit."
    input = gets.strip.to_i

    if input == 1
      url = story.url
      @scraper
    end
  end

  # def get_user_input
  #   puts "Please select the story number (#1-3) or type 'exit' to quit."
  #   input = gets.strip.to_i
  #
  #   if input == 1
  #     url = @scraper.scrape_selected_story(input)#.stories[0].url
  #
  #   elsif input == 2
  #     url = @scraper.scrape_selected_story(input)#.stories[1].url
  #     puts "you chose Story #2"
  #   elsif input == 3
  #     url = @scraper.scrape_selected_story(input)#.stories[2].url
  #     puts "Story 3"
  #   else
  #     exit
  #   end

    #
  #end


end
