require 'pry'

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
      when "1"
        retrieve_story(input)
      when "2"
        retrieve_story(input)
      when "3"
        retrieve_story(input)
      else
        puts ""
        puts "***   Invalid input, type (#1-3) or 'exit' to quit.   ***"
      end
    end
  end

  def list_stories
    @news_list.stories.each.with_index(1) do |story, index|
      puts "#{index}. #{story.title}:"
      puts "#{story.teaser}"
      puts ""
    end
    options_output
  end

  def options_output
    puts ""
    puts "To read a story in your browser, type (#1-3) or 'exit' to quit."
  end

  def retrieve_story(input)
    url = @news_list.stories[input.to_i-1].url
    scraper = NprTodaysNews::Scraper.new(url)
    scraper.scrape_individual_story
    options_output
  end

end
