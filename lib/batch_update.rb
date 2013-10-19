require 'open-uri'
require 'kconv'

class BatchUpdate

  SC_OK = "200"

  def self.start
    news
    summary
    creater
  end

  def self.convert(url)
    begin
      page = open(url)
    rescue OpenURI::HTTPError
      return
    end
    doc = Nokogiri::HTML(page.read, nil, 'utf-8')
  end
  
  def self.summary
    html = self.convert("http://finance.yahoo.co.jp")
    x = html.css("div#slider")[0].css("dd")
    [1,2,3,4].each do |i|
      unless Summary.find_by_id(i)
        Summary.create(comparison: x[i*2].inner_text, price: x[i*2-1].inner_text)
      end
    end
  end

  def self.news
    html = self.convert("http://news.finance.yahoo.co.jp/category/bus_all/")
    i=0
    News.all.each{|x|x.destroy}
    html.css("div.marB15").each do |x|
      @news = News.new
      @news.link = "http://news.finance.yahoo.co.jp" + x.css("a")[0][:href].to_s
      @news.word = x.css("a")[0].inner_text
      @news.newsdate = x.css("li.ymuiDate").inner_text
      @news.save
      i = i+1
    end
  end
  #updater
  def self.updater
    35.times do |j|
      id = j + 1
      i = 1
      self.convert("http://106.187.54.79/stock/#{id}?span=120").css("table tr").each do |x|
        unless i == 1
          td = x.css("td")
          stock = Stock.find_by_code(td[0].text.to_i)
          stock.update_attributes(
            price: td[3].text,
            previousprice: td[4].text,
            volume: td[5].text,
            opening: td[7].text,
            high: td[8].text,
            low: td[9].text,
            chart: td[10].text,
            industry: td[14].text
            )
          stock.save
        end
        i += 1
      end
    end
  end
  #creater
  def self.creater
    CODES.each do |x|
      unless Stock.find_by_code(x.to_i)
        stockCode = x
        url = "http://stocks.finance.yahoo.co.jp/stocks/detail/?code=#{stockCode}"
        html = convert(url)
        date = html.css('div.innerDate dd').map{|x| x.css('strong').inner_text }
      
        @stock = Stock.new(
          previousprice: date[0],
          opening: date[1],
          high: date[2],
          low: date[3],
          volume: date[4],
          price: html.css('table.stocksTable td.stoksPrice')[1].content,
          name: html.css('table.stocksTable th.symbol h1').inner_text,
          code: x,
          market: html.css('div.stocksDtlWp dd')[0].content,
          chart: html.css("div.styleChart img")[0][:src]
          )
        @stock.save
      end
    end
  end

  def self.blog_count
    Blog.all.each do |blog|
      BlogCount.create(blog_id: blog.id, view: blog.ins.count)
      blog.ins.destroy_all
    end
  end

end