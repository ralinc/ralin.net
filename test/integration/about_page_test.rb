require 'test_helper'

class AboutPageTest < ActionDispatch::IntegrationTest
  test 'about page' do
    get about_path
    assert_select 'title', 'About'
    assert_select 'a[href=?]', 'https://github.com/ralinc'
    assert_select 'a[href=?]', 'https://www.linkedin.com/in/ralinchimev'
    assert_select 'a[href=?]', 'https://facebook.com/ralin.chimev'
    assert_select 'a[href=?]', 'mailto:ralin.chimev@gmail.com'
    assert_select 'footer'
  end
end
