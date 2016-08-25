require_relative './beaches'
require_relative './attractions'
require_relative './all_inclusive_resorts'
require_relative './destinations'
require_relative './destinations_on_the_rise'
require_relative './hotels'
require_relative './islands'

class Travel::Scraper
	
  def list
    [
      "beaches",
      "attractions",
      "all_inclusive_resorts",
      "destinations",
      "destinations_on_the_rise",
      "islands"
    ]
  end

  def beaches
    self.scrape_beaches
  end

  def attractions
    self.scrape_attractions
  end

  def all_inclusive_resorts
    self.scrape_all_inclusive_resorts
  end

  def destinations
    self.scrape_destinations
  end

  def destinations_on_the_rise
    self.destinations_on_the_rise
  end

  def hotels
    self.scrape_hotels
  end

  def islands
    self.scrape_islands
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

	def self.scrape_all_inclusive_resorts
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-AllInclusive-cTop-g1"))
		category = doc.css("h1.laurelhdr").text

    winners = doc.css("div.posRel.tcInner").map do |winner|
      name = winner.css(".mainName a").first.text
      location = winner.css(".smaller a").first.text
      AllInclusiveResort.new(name, location)
    end
	end

	def self.scrape_destinations
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-Destinations"))
		category = doc.css("h1.laurelhdr").text

    winners = doc.css("div.posRel.tcInner.withMeta.tcActive").map do |winner|
      name = winner.css(".mainName a").first.text
      Destination.new(name)
    end
	end

	def self.scrape_desinations_on_the_rise
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-DestinationsontheRise"))
		category = doc.css("h1.laurelhdr").text

    winners = doc.css("div.posRel.tcInner.tcActive").map do |winner|
      name = winner.css(".mainName a").first.text
      DestinationOntheRise.new(name)
    end
	end

	def self.scrape_hotels
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-Hotels"))
		category = doc.css("h1.laurelhdr").text

    winners = doc.css("div.posRel.tcInner.tcActive").map do |winner|
      name = winner.css(".mainName.extra a").first.text
      location = winner.css(".smaller a").first.text
      Hotel.new(name, location)
    end
	end

	def self.scrape_islands
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-Islands"))
		category = doc.css("h1.laurelhdr").text

    winners = doc.css("div.posRel.tcInner.tcActive").map do |winner|
      name = winner.css(".mainName a").first.text
      Island.new(name)
    end		
	end

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