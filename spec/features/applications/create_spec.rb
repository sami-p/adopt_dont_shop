require 'rails_helper'

RSpec.describe 'application creation' do
  before :each do
    @application_1 = Application.create!(name: 'Sebastian Hastings',
                                         street_address: '123 Ilyeria Drive',
                                         city: 'Burnaby',
                                         state: 'CA',
                                         zip_code: 88925,
                                         status: 'In Progress')

    @application_2 = Application.create!(name: 'Viola Hastings',
                                         street_address: '42 Blue Avenue',
                                         city: 'Madison',
                                         state: 'WI',
                                         zip_code: 67119,
                                         status: 'In Progress')
  end

  # User Story 2
  it 'displays a new, submittable application form' do
    visit "/applications/new"

    fill_in("Name", with: "Viola Hastings")
    fill_in("Street address", with: "42 Blue Avenue")
    fill_in("City", with: "Madison")
    fill_in("State", with: "WI")
    fill_in("Zip code", with: "67119")

    click_on "Submit"

    expect(current_path).to eq("/applications/#{Application.last.id}")
    expect(page).to have_content("67119")
  end

  #User Story 3
  it 'displays an error message when invalid application is submitted' do
    visit "/applications/new"

    fill_in("Name", with: "Viola Hastings")
    fill_in("Street address", with: "42 Blue Avenue")
    fill_in("City", with: "Madison")
    fill_in("State", with: "WI")

    click_on "Submit"

    expect(page).to have_content("Error: Zip code can't be blank")
  end
end
