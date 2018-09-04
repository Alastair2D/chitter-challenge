feature 'Creating a peep' do
  
  scenario 'A user can add a peep to Chitter' do
    visit('/peeps')
    fill_in('peep', with: 'This is my first peep!')
    click_button('Submit')
    expect(page).to have_content('This is my first sql peep!')
  end

end
