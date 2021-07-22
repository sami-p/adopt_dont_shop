require 'rails_helper'

RSpec.describe 'admin shelters index' do
  before :each do
    @shelter_1 = Shelter.create(name: 'Aurora shelter', city: 'Aurora, CO', foster_program: false, rank: 9)
    @shelter_2 = Shelter.create(name: 'RGV animal shelter', city: 'Harlingen, TX', foster_program: false, rank: 5)
    @shelter_3 = Shelter.create(name: 'Fancy pets of Colorado', city: 'Denver, CO', foster_program: true, rank: 10)

    @application_1 = Application.create!(name: 'Sebastian Hastings',
                                         street_address: '123 Ilyeria Drive',
                                         city: 'Burnaby',
                                         state: 'CA',
                                         zip_code: 88925,
                                         status: 'Pending')

    @application_2 = Application.create!(name: 'Duke Orsino',
                                         street_address: '108 Beautiful Street',
                                         city: 'Chicago',
                                         state: 'IL',
                                         zip_code: 32557,
                                         status: 'Pending')

    @application_3 = Application.create!(name: 'Justin Drayton',
                                         street_address: '22 Just Not A Good Guy Lane',
                                         city: 'Nowhere',
                                         state: 'Ohio',
                                         zip_code: 89745,
                                         status: 'Rejected')
  end

  it 'displays all shelters in reverse alphabetical order' do
    visit "/admin/shelters"

    expect(@shelter_2.name).to appear_before(@shelter_3.name)
    expect(@shelter_3.name).to appear_before(@shelter_1.name)
  end
end
