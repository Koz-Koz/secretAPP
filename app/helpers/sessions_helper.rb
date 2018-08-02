module SessionsHelper
	def log_in(user)
		session[:user_id] = user.id # cookie temporaire des que la personne quitte le browser il est deconnecter automatiquement
	end

	def current_user # user connecté
		@current_user ||= User.find_by(id: session[:user_id])
	end

	def logged_in? # si y a un current user il est login sinon il est pas login  
    !current_user.nil?
    end

	def log_out
	end
end
