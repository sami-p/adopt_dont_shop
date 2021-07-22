class AdminsController < ApplicationController

  def shelters_index
    @shelters = Shelter.reverse_alphabetical_order
  end
end
