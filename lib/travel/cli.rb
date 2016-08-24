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
		puts  "All inclusive resorts"
	end

	def attractions
		"Attractions"
	end

	def beaches
		Travel::Scraper.scrape_beaches.each.with_index(1) do |winner, index|
		 	puts "#{index}: #{winner.name} - #{winner.location}, #{winner.best_time}"
		end
		return nil
	end

	def destinations
	end

	def destinations_on_the_rise
	end

	def islands
	end

	def landmarks
	end

	def museums
	end

	def restaurants
	end


end