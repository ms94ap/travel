class Travel::CLI

	def call 
		puts "Welcome to World Travelers'Awards for #{Time.now.year}"
    list_awards
    menu
    goodbye
	
	end
  
  def list_awards
    puts "Please select a category or type exit."
    puts <<-DOC
      1 - All Inclusive Resorts,
      2 - Attractions,
      3 - Beaches,
      4 - Destinations,
      5 - Destinations on the Rise,
      6 - Hotels,
      7 - Islands,
      8 - Landmarks,
      9 - Museums,
      10 - Restaurants
      DOC
  end
	

  def menu
    input = nil
    puts "Enter the number of the Award you wish to see"
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "All Inclusive Resorts"
        puts all_inclusive_resorts
      when "2"
        puts"Attractions"
        puts attractions
      when "3"
        puts"Beaches"
        puts beaches
      when "4"
        puts"Destinations"
        puts destinations
      when "5"
        puts"Destinations on the Rise"
        puts destinations_on_the_rise
      when "6"
        puts"Hotels"
        puts hotels
      when "7"
        puts"Islands"
        puts islands
      when "8"
        puts"Landmarks"
        puts landmarks
      when "9"
        puts"Museums"
        puts museums
      when "10"
        puts"Restaurants"
        puts restaurants
      else
        puts "Type List or Exit"
      end
    end

  end

  

  def goodbye
    puts "Thank you for visiting Travelers Choice Awards. Have a nice day!"
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