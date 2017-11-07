Given(/^I am on the Google homepage$/) do
  visit 'https://google.co.uk'
end

When(/^I search for Ada Lovelace$/) do
  fill_in 'q', :with => 'Ada Lovelace'
  sleep 5
  click_on(class: 'lsb', text: 'Google Search') 
end

Then(/^I should see a Wikipedia link$/) do
  expect(page).to have_content('Wikipedia')
end

Given("I am on the Ada Lovelace results page") do
  visit 'https://www.google.co.uk/search?q=ada+lovelace&oq=ada+lovelace&aqs=chrome..69i57j0l5.2980j0j8&sourceid=chrome&ie=UTF-8'
end

Then("I should see the correct Ada Lovelace image") do
  expect(page).to have_css('#uid_dimg_0')
end

When("I select the Wikipedia link") do
  click_link('Ada Lovelace - Wikipedia')
end

Then("I should be taken to the expected page") do
 page.has_xpath?('/html/body/a')
end