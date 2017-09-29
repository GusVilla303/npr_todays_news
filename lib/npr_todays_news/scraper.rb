class NprTodaysNews::Scraper

  def initialize
    @news_list = NewsList.new
    html = open("http://www.npr.org/sections/news/")
    @doc = Nokogiri::HTML(html)
  end

  def scrape
    scrape_news_list
    scrape_news_story
    @news_list #we want an instance of news list (all of today's stories)
  end

  def scrape_news_list
    @doc.css("")

    news_list
  end

end
