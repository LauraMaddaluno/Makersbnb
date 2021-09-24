feature 'view a space' do
  scenario 'Allows user to view space' do
    visit('/newspace')
    expect(page).to have_content 'Property'
  end
end
   