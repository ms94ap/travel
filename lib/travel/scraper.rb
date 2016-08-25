require_relative './beaches'
require_relative './attractions'

class Travel::Scraper
	
  def list
    [
      "beaches",
      "attractions"
    ]
  end

  def beaches
    self.scrape_beaches
  end

  def attractions
    self.scrape_attractions
  end

	

	def self.scrape_beaches
    doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-Beaches"))
    category = doc.css("h1.laurelhdr").text
    
		winners = doc.css("div.posRel.tcInner").map do |winner|
      name = winner.css(".mainName a").first.text
      location = winner.css(".smaller a").first.text
      best_time = winner.css(".besttime").text
      Beach.new(name, location, best_time)
    end
	end

	def self.scrape_attractions
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-Attractions"))
		category = doc.css("h1.laurelhdr").text

    winners = doc.css("div.posRel.tcInner").map do |winner|
		  name = winner.css(".mainName a").first.text
      location = winner.css(".smaller a").first.text
		  Attraction.new(name, location)
    end
	end

	# def self.scrape_all_inclusive_resorts
	# 	doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
	# 	category =
	# 	position =
	# 	name =
	# 	location =
	# end

	# def self.scrape_destinations
	# 	doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
	# 	category =
	# 	position =
	# 	name =
	# 	location =
	# end

	# def self.scrape_desinations_on_the_rise
	# 	doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
	# 	category =
	# 	position =
	# 	name =
	# 	location =
	# end

	# def self.scrape_hotels
	# 	doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
	# 	category =
	# 	position =
	# 	name =
	# 	location =
	# end

	# def self.scrape_islands
	# 	doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
	# 	category =
	# 	position =
	# 	name =
	# 	location =
	# end

	# def self.scrape_islands
	# 	doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
	# 	category =
	# 	position =
	# 	name =
	# 	location =
	# end

	# def self.scrape_landmarks
	# 	doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
	# 	category =
	# 	position =
	# 	name =
	# 	location =
	# end

	# def self.scrape_museums
	# 	doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
	# 	category =
	# 	position =
	# 	name =
	# 	location =
	# end

	# def self.scrape_restaurants
	# 	doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
	# 	category =
	# 	position =
	# 	name =
	# 	location =
	# end

end