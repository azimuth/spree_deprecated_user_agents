Spree::BaseController.class_eval do
   before_filter :dua_setup

   private

   def dua_setup
     if Spree::Config.get(:dua_enabled).to_i == 1
       unless cookies[:dua_been_warned]
         @dua_enabled = (Spree::Config.get(:dua_enabled).to_i == 1) || true
         @dua_message = Spree::Config.get(:dua_message) || "Your Browser is outdated, please upgrade to the latest version."
         cookies[:dua_been_warned] = true
       end
     end
   end
 end
