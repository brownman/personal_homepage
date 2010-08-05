class ContactController < ApplicationController
  require 'vpim/vcard'
  def index

  end
  
  def vcard
    card = Vpim::Vcard::Maker.make2 do |maker|
      maker.add_name do |name|
        name.prefix = ''
        name.given = USER_INFO[:firstname]
        name.family = USER_INFO[:lastname]
      end
    
      maker.add_addr do |addr|
        addr.preferred = true
        addr.location = USER_INFO[:location]
        addr.street = USER_INFO[:street]
        addr.locality = USER_INFO[:locality]
        addr.postalcode = USER_INFO[:zip]
        addr.region = USER_INFO[:region]
        addr.country = USER_INFO[:country]
      end



      #maker.add_tel(@user.telephone)
      #maker.add_email(@user.email) { |e| e.location = 'work' }

    end

    send_data card.to_s, :filename => "contact.vcf"
    
  end
  
end