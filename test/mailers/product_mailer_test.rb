require 'test_helper'

class ProductMailerTest < ActionMailer::TestCase
  test "created" do
    mail = ProductMailer.created
    assert_equal "Created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "edited" do
    mail = ProductMailer.edited
    assert_equal "Edited", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "erased" do
    mail = ProductMailer.erased
    assert_equal "Erased", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
