require 'nokogiri'
require 'open-uri'

class ComicsController < ApplicationController
  def index

  end

  def create
    comic_links = params[:comics]
    comic = current_user.comics.create()
    comic_links.each do |comic_link|
      comic.links.create(url: comic_link)
    end
    render  nothing: true, status: 201
  end

  def show
    @comics = current_user.comics.limit(10).offset(current_user.comics.length - 10)
  end

  def comic1
    url = "http://xkcd.com/rss.xml"
    @data = Nokogiri::XML(open(url))
  end

  def comic2
    url = "http://www.rsspect.com/rss/qwantz.xml"
    @data = Nokogiri::XML(open(url))
  end

  def comic3
    url = "http://www.dieselsweeties.com/ds-unifeed.xml"
    @data = Nokogiri::XML(open(url))
  end

  def comic4
    url = "http://oglaf.com/feeds/rss/"
    @data = Nokogiri::XML(open(url))
  end

  def comic5
    url = "http://feeds2.feedburner.com/freakangels"
    @data = Nokogiri::XML(open(url))
  end

  def comic6
    url = "http://www.questionablecontent.net/QCRSS.xml"
    @data = Nokogiri::XML(open(url))
  end

  def comic7
    url = "http://feeds.feedburner.com/smbc-comics/PvLb"
    @data = Nokogiri::XML(open(url))
  end

  def comic8
    url = "http://drmcninja.com/feed/"
    @data = Nokogiri::XML(open(url))
  end

  def comic9
    url = "http://www.meekcomic.com/feed/"
    @data = Nokogiri::XML(open(url))
  end

  def comic10
    url = "http://www.joyoftech.com/joyoftech/jotblog/"
    @data = Nokogiri::XML(open(url))
  end

  def comic11
    url = "http://feeds.feedburner.com/LookingForGroup"
    @data = Nokogiri::XML(open(url))
  end

  def comic12
    url = "http://comics.lucyknisley.com/feed/"
    @data = Nokogiri::XML(open(url))
  end

  def comic13
    url = "http://garfieldminusgarfield.net/rss"
    @data = Nokogiri::XML(open(url))
  end

  def comic13
    url = "http://garfieldminusgarfield.net/rss"
    @data = Nokogiri::XML(open(url))
  end

  def comic14
    url = "http://jl8comic.tumblr.com/rss"
    @data = Nokogiri::XML(open(url))
  end

  def comic15
    url = "http://www.buckocomic.com/feed/"
    @data = Nokogiri::XML(open(url))
  end

  def comic16
    url = "http://abominable.cc/rss"
    @data = Nokogiri::XML(open(url))
  end

  def comic17
    url = "http://amultiverse.com/feed/"
    @data = Nokogiri::XML(open(url))
  end

  def comic18
    url = "http://www.phdcomics.com/gradfeed.php"
    @data = Nokogiri::XML(open(url))
  end

  def comic19
    url = "http://nedroid.com/feed/"
    @data = Nokogiri::XML(open(url))
  end

  def comic20
    url = "http://www.octopuspie.com/index.xml"
    @data = Nokogiri::XML(open(url))
  end

end
