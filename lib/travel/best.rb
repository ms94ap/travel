class Travel::Best
	attr_accessor :category, :name, :location, :url, :position, :country

	def self.scrape_all
		beaches = []
		beaches = self.scrape_beaches
		attractions = []
		attractions << self.scrape_attractions
		all_inclusive_resorts = []
		all_inclusive_resorts << self.scrape_all_inclusive_resorts
		destinations = []
		destinations << scrape_destinations

	end

	def self.scrape_beaches
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
		category = doc.search("c_label").text
		position = doc.search("span.posn_inner").text
		name = doc.search("div.winner.name").text
		location = doc.search()
	end

	def self.scrape_attractions
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
		category =
		position =
		name =
		location =
	end

	def self.scrape_all_inclusive_resorts
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
		category =
		position =
		name =
		location =
	end

	def self.scrape_destinations
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
		category =
		position =
		name =
		location =
	end

	def self.scrape_desinations_on_the_rise
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
		category =
		position =
		name =
		location =
	end

	def self.scrape_hotels
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
		category =
		position =
		name =
		location =
	end

	def self.scraper_islands
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
		category =
		position =
		name =
		location =
	end

	def self.scraper_islands
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
		category =
		position =
		name =
		location =
	end

	def self.scraper_landmarks
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
		category =
		position =
		name =
		location =
	end

	def self.scraper_museums
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
		category =
		position =
		name =
		location =
	end

	def self.scraper_restaurants
		doc = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice"))
		category =
		position =
		name =
		location =
	end

end