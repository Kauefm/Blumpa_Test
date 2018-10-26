class ProductMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.welcome.subject
  #
  def product_created(product)
    @product = product
    mail(
      to: @product.client.email,
      subject: "O produto #{@product.description} foi criado com sucesso"
    )
  end
end
