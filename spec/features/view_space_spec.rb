feature 'view a space' do
  scenario 'Allows user to view space' do
    visit('/space')
    expect(page).to have_content 'Property'
  end
end
