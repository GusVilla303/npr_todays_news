class NprTodaysNews::CLI

  def initialize
    puts "Please type 'list' to list feature stories or 'exit' to quit."

    scraper = NprTodaysNews::Scraper.new
    @news_list = scraper.scrape_featured_stories
  end

  def run
    input = ""
    while input != "exit"
      puts
      input = gets.strip

      case input
      when "list"
        puts "Here are today's featured stories:"
        puts
        list_stories
      when "exit"
        puts "Goodbye!"
        exit
      else
        system("open #{@news_list.stories[input.to_i-1].url}")
        options_output
      end
    end
  end

  def list_stories
    @news_list.stories.each.with_index(1) do |story, index|
      puts "#{index}. #{story.title}"  #-- #{story.teaser}
    end
    options_output
  end

  def options_output
    puts ""
    puts "To read a story in your browser, type (#1-3) or 'exit' to quit."
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
