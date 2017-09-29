class NprTodaysNews::Scraper

  def initialize
    @news_list = NewsList.new
    html = open("http://www.npr.org/sections/news/")
    @doc = Nokogiri::HTML(html)
  end

  def scrape
    scrape_featured_stories
    #scrape_non_featured_stories
    #scrape_news_story
    #@news_list #we want an instance of news list (all of today's stories)
  end

  def scrape_featured_stories
    @doc.css("div.featured .featured-3-up .item")
  end
  #
  # def scrape_non_featured_stories
  #   @doc.css("div.list-overflow .item")
  # end

end
