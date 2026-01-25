require "test_helper"

class ProductMailerTest < ActionMailer::TestCase
  test "in_stock" do
    product = products(:one)
    subscriber = subscribers(:one)

    mail = ProductMailer.with(product: product, subscriber: subscriber).in_stock
    assert_equal "In stock", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.org" ], mail.from
    assert_match "Good news!", mail.body.encoded
  end

  test "in_stock 2" do
    mail = ProductMailer.with(product: products(:tshirt), subscriber: subscribers(:david)).in_stock
    assert_equal "In stock", mail.subject
    assert_equal ["david@example.org"], mail.to
    assert_equal ["from@example.org"], mail.from
    assert_match "Good news!", mail.body.encoded
  end
end
