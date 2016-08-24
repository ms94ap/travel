require_relative './beaches'

class Travel::Scraper
	
  def list
    [
      "beaches",
      "attactions"
    ]
  end

  def beaches
    self.scrape_beaches
  end


	def self.scrape_all
	
		beaches = self.scrape_beaches
		attractions = []
		attractions << self.scrape_attractions
		all_inclusive_resorts = []
		all_inclusive_resorts << self.scrape_all_inclusive_resorts
		destinations = []
		destinations << self.scrape_destinations
		desinations_on_the_rise = []
		desinations_on_the_rise << self.scrape_desinations_on_the_rise
		hotels = []
		hotels << self.scrape_hotels
		islands = []
		islands << self.scrape_islands
		landmarks = []
		landmarks << self.scrape_landmarks
		museums = []
		museums << self.scrape_museums
		@restaurants = []
		restaurants << self.scrape_restaurants
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

	# def self.scrape_attractions
	# 	doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
	# 	category =
	# 	position =
	# 	name =
	# 	location =
	# end

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