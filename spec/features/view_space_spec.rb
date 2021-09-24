require 'pg'

feature 'view a space' do
  scenario 'Allows user to view space' do

    Space.create(name: 'Makers Cottage', description: 'Great for weekend breaks!', 
      price_per_night: 100, available_from: '2021-09-23', 
      available_to: '2021-10-23')

    visit('/newspace')
    expect(page).to have_content 'Makers Cottage'
  end
end
   