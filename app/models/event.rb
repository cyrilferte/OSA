class Event < ApplicationRecord
    
   def  sandsms(name, impact, proba)
        require 'uri'
        require 'net/http'
        
        url = URI("https://api.tropo.com/1.0/sessions?action=create&token=617074795859526c4d4c4655525a6e6c59626d454f755446486c4d676e42506f5276476b7562516970464674&phonenumber=%2033675040927&msg=proba")
        
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        request = Net::HTTP::Get.new(url)
        request["cache-control"] = 'no-cache'
        request["postman-token"] = '64c7c0d1-9c12-8094-3425-872f377c1037'
        
        response = http.request(request)
        puts response.read_body
    end
end
