require 'test_helper'

class CompletedMailerTest < ActionMailer::TestCase
  test "new_completed" do
    mail = CompletedMailer.new_completed
    assert_equal "New completed", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
