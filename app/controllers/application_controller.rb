class ApplicationController < ActionController::Base
	
	
	add_flash_types :danger, :info ,:warning, :success
	# def default_url_options
	# 	{ locale: I18n.locale }
	# end
end
