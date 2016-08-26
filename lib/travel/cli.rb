class Travel::CLI

	def call 
		puts "Welcome to World Travelers'Awards for #{Time.now.year}"
    start
		#list
	end

	def start
		puts "please select category" 
    
		input = gets.strip.to_i
	end

  def menu
    input = nil
    while input != exit
      puts "enter the number of the Award you wish to see"
      input = gets.strip
      case input
      when "1"
        puts "All Inclusive Resorts"
      when "2"
        puts "Attractions"
      when "3"
        puts "Beaches"
      when "4"
        puts "Destinations"
      when "5"
        puts "Destinations on the rise"
      when "6"
        puts "Hotels"
      when "7"
        puts "Islands"
      when "8"
        puts "Landmarks"
      when "9"
        puts "Museums"
      when "10"
        puts "Restaurants"
      else
        puts "Type List or Exit"
      end
    end

  end

	def all_inclusive_resorts
    Travel::Scraper.scrape_all_inclusive_resorts.each.with_index(1) do |winner, index|
      puts "#{index}: #{winner.name} - #{winner.location}"
    end
    return nil
  end

	def attractions
		Travel::Scraper.scrape_attractions.each.with_index(1) do |winner, index|
		 	puts "#{index}: #{winner.name} - #{winner.location}"
		end
		return nil
	end

	def beaches
		Travel::Scraper.scrape_beaches.each.with_index(1) do |winner, index|
		 	puts "#{index}: #{winner.name} - #{winner.location}, #{winner.best_time}"
		end
		return nil
	end

	def destinations
    Travel::Scraper.scrape_destinations.each.with_index(1) do |winner, index|
      puts "#{index}: #{winner.name}"
    end
    return nil
	end

	def destinations_on_the_rise
    Travel::Scraper.scrape_destinations_on_the_rise.each.each.with_index(1) do |winner, index|
      puts "#{index}: #{winner.name}"
    end
    return nil
	end

  def hotels
    Travel::Scraper.scrape_hotels.each.with_index(1) do |winner, index|
      puts "#{index}: #{winner.name} - #{winner.location}"
    end
    return nil
  end


	def islands
    Travel::Scraper.scrape_islands.each.with_index(1) do |winner, index|
      puts "#{index}: #{winner.name}"
    end
    return nil
	end

	def landmarks
    Travel::Scraper.scrape_landmarks.each.with_index(1) do |winner, index|
      puts "#{index}: #{winner.name}- #{winner.location}"
    end
    return nil
	end

	def museums
    Travel::Scraper.scrape_museums.each.with_index(1) do |winner, index|
      puts "#{index}: #{winner.name}- #{winner.location}"
    end
    return nil
	end

	def restaurants
    Travel::Scraper.scrape_restaurants.each.with_index(1) do |winner, index|
      puts "#{index}: #{winner.name}- #{winner.location} - #{winner.cuisine}"
    end
    return nil
	end


end