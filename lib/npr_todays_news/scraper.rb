class NprTodaysNews::Scraper

  def self.scrape
    html = open("http://www.npr.org/sections/news/")
    @doc = Nokogiri::HTML(html)
    puts @doc
  end

end
