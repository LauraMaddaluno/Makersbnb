feature 'Sign-up' do
  scenario 'User can sign-up to Makersbnb' do
    visit('/signup')
    fill_in :first_name, with: 'Jamie'
    # fill_in :last_name, with: 'Brandt'
    # fill_in :email, with: 'JBrandt49@example.com'
    # fill_in :username, with: 'JBrandt49'
    # fill_in :password, with: 'JBrandt49!'
    # fill_in :password_con, with: 'JBrandt49!'
    click_button 'Submit'

    expect(page).to have_content 'List a space, Jamie'
  end

end
