class NprTodaysNews::Scraper

  def initialize
    @news_list = NewsList.new
    html = open("http://www.npr.org/sections/news/")
    @doc = Nokogiri::HTML(html)
  end

  def scrape
    scrape_featured_stories
  end

  def scrape_featured_stories
    npr_stories = @doc.css("div.featured-3-up .item")
    npr_stories.each do |npr_story|
      story = Story.new
      story.title = npr_story.css("h2.title").text.strip
      story.teaser = npr_story.css("p.teaser").text.strip
      story.url = npr_story.css("h2 a").attribute("href").value

      @news_list.add_story(story)
    end
    @news_list
  end
  
end
