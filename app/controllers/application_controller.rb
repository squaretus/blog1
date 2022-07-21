class ApplicationController < ActionController::Base

    rescue_from CanCan::AccessDenied do |exception|        
        render file: "#{Rails.root}/public/404.html"
    end
end
