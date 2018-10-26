class ProductMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.welcome.subject
  #

  def created(product)
    @product = product
    mail(
      to: @product.client.email,
      subject: "O produto #{@product.description} foi criado com sucesso"
    )
  end

 def edited(product)
    @product = product
    mail(
      to: @product.client.email,
      subject: "O produto #{@product.description} foi editado com sucesso"
    )
  end

  def erased(product)
    @product = product
    mail(
      to: @product.client.email,
      subject: "O produto #{@product.description} foi apagado com sucesso"
    )
  end

end
