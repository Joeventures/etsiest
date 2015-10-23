module Etsiest
  class EtsySearch
    def find_listings( search_term )
      response = Etsy::Listing.find_all_active_by_category(search_term, :includes => ['Images', 'Shop'])
      response.map {|r| r.result }
    end
  end
end