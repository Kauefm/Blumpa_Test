# Preview all emails at http://localhost:3000/rails/mailers/product_mailer
class ProductMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/product_mailer/created
  def created
    ProductMailer.created
  end

  # Preview this email at http://localhost:3000/rails/mailers/product_mailer/edited
  def edited
    ProductMailer.edited
  end

  # Preview this email at http://localhost:3000/rails/mailers/product_mailer/erased
  def erased
    ProductMailer.erased
  end

end
