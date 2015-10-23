module Etsiest
  class EtsySearch
    def find_listings( search_term )
      response = Etsy::Request.get('/listings/active', :includes => ['Images', 'Shop'], :keywords => 'whiskey')
      response.result
    end
  end
end