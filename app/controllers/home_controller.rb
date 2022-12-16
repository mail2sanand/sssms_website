class HomeController < ApplicationController
	def about_us; end
	def services; end
	def gallery; end
	def statistics
		@stats = Stat.first
		puts @stats.inspect
	end
	def news_and_events; end	
	def contact; end	
	def impact; end	
end
