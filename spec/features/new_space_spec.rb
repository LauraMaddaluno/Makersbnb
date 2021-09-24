feature 'to list a new space' do
  scenario 'allows user to list a new space' do
    visit('/listspace')
    fill_in :name, with: 'Sunrise Cottage'
    fill_in :description, with: 'Ex nisi in veniam sint velit veniam elit mollit irure. Veniam ea deserunt aliqua est officia dolor cillum quis excepteur laborum. Dolore magna nulla elit do cupidatat sunt sunt ipsum non officia qui nulla pariatur. Aute eu dolor cillum qui.'
    fill_in :price_per_night, with: '100'
    fill_in :available_from, with: '2021-09-22'
    fill_in :available_to, with: '2021-10-22'
    click_button 'List my space!'

    expect(page).to have_content("Ex nisi in veniam sint velit veniam elit mollit irure. Veniam ea deserunt aliqua est officia dolor cillum quis excepteur laborum. Dolore magna nulla elit do cupidatat sunt sunt ipsum non officia qui nulla pariatur. Aute eu dolor cillum qui.")
  end
end
