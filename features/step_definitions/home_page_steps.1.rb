Given("I am on the home page") do
visit root_path
end

Then("I see the {string} page") do |string|
expect(page).to have_content(string)
end

When("I click on the {string} btn") do |string|
click_on(string)
end
