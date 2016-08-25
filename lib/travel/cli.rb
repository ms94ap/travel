class Travel::CLI

	def call 
		puts "Welcome to Travelers'Awards for #{Time.now.year}"

		list_all
	end

	def start
		puts "please select category" #check hwo to list
		#input = gets.strip.to_i
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
    Travel::Scraper.scrape_destinations_on_the_rise.each.with_index(1) do |winner, index|
      puts "#{index}: #{winner.name}"
    end
    return nil
	end

  def hotels
    Travel::Scraper.scrape_hotels.with_index(1) do |winner, index|
      puts "#{index}: #{winner.name} - #{winner.location}"
    end
    return nil
  end


	def islands
    Travel::Scraper.scrape_islands.with_index(1) do |winner, index|
      puts "#{index}: #{winner.name}"
    end
    return nil
	end

	def landmarks
	end

	def museums
	end

	def restaurants
	end


end