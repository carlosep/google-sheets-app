module ModelsMacros
  def user_sign_in(user: nil, redirect: nil)
    redirect ||= true
    user ||= create(:user)
    visit new_user_session_path if redirect
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    within('.actions') do
      click_on 'Log in'
    end
  end
  def fill_item(user: nil, redirect: nil)
    redirect ||= true
    user ||= create(:user)
    visit new_user_session_path if redirect
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    within('.actions') do
      click_on 'Log in'
    end
  end

  def admin_sign_in(admin: nil, redirect: nil)
    redirect ||= true
    admin ||= create(:admin)
    visit new_user_session_path if redirect
    fill_in 'Email', with: admin.email
    fill_in 'Password', with: admin.password
    within('.actions') do
      click_on 'Log in'
    end
  end
end
