Given("I am on the home page") do
visit root_path
end

Then("I see the {string} page") do |string|
expect(page).to have_content(string)
end

When("I click on the {string} btn") do |string|
click_on(string)
end

When("I click the {string} link") do |string|
click_on(string)
end

Then("I enter {string} into the {string} input field") do |string, string2|
fill_in 'user[password]', with: 'Test'
end

Then("I see the {string} Text") do |string|
expect(page).to have_content(string)
end
