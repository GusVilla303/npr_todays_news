class NprTodaysNews::Scraper

  def initialize(url="http://www.npr.org/sections/news/")
    @url = url
    @doc = Nokogiri::HTML(open(@url))
  end

  def scrape_featured_stories
    news_list = NewsList.new
    npr_stories = @doc.css("div.featured-3-up .item")
    npr_stories.each do |npr_story|
      story = Story.new
      story.title = npr_story.css("h2.title").text.strip
      story.teaser = npr_story.css("p.teaser").text.strip
      story.url = npr_story.css("h2 a").attribute("href").value

      story.save

      news_list.add_story(story)
    end
    news_list
  end

  def scrape_individual_story
    story_text = @doc.css("div.storytext p")
    p_elements = story_text.select { |element| element.name == "p" }
    paragraph_text = p_elements.collect { |p_tag| p_tag.text }
    story_header
    print_text(paragraph_text)
  end

  def story_header
    puts ""
    puts "      ***  Here is your selected story:   ***      "
    puts ""
  end

  def print_text(text)
    text[1..-1].each do |paragraph|
      puts "#{paragraph}\n"
      puts ""
    end
  end
end
