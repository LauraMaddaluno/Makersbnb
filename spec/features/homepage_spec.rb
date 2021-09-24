feature 'Homepage' do
  scenario 'Shows user homepage' do
    visit('/')
    click_button "SIGN UP"
    expect(page).to have_content 'Signup here!'
  end
end
