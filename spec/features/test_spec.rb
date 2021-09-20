feature 'Homepage' do
  scenario 'Welcomes user' do
    visit('/')
    expect(page).to have_content 'Welcome!'
  end
end
