module ::SignUpSteps
  step "I sign up" do
    visit "/users/sign_up"
    fill_in "Email", with: Faker::Internet.email
    fill_in "Password", with: "p@ssw0rd"
    fill_in "Password confirmation", with: "p@ssw0rd"
    click_button("Sign up")
  end

  step "I omit the email" do
    visit "/users/sign_up"
    fill_in "Password", with: "p@ssw0rd"
    fill_in "Password confirmation", with: "p@ssw0rd"
    click_button("Sign up")
  end

  step "I duplicate the email" do
    FactoryGirl.create(:user, email: Faker::Internet.email)

    visit "/users/sign_up"
    fill_in "Email", with: User.first.email
    fill_in "Password", with: "p@ssw0rd"
    fill_in "Password confirmation", with: "p@ssw0rd"
    click_button("Sign up")
  end

  step "I omit the password" do
    visit "/users/sign_up"
    fill_in "Email", with: Faker::Internet.email
    click_button("Sign up")
  end

  step "I omit the confirmation" do
    visit "/users/sign_up"
    fill_in "Email", with: Faker::Internet.email
    fill_in "Password confirmation", with: "p@ssw0rd"
    click_button("Sign up")
  end

  step "I am signed in" do
    expect(page).to have_content("Sign out")
  end

  step "I am not signed in" do
    expect(page).not_to have_content("Sign out")
  end
end
