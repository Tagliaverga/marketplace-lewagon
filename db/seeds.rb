# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Product.create(name: "Garfo para sopa", price: 50, description: "Um item perfeitamente inutil na hora de tomar a sua sopinha")
Product.create(name: "Shampoo para careca", price: 40, description: "Indispensavel na hora de tomar banho")
Product.create(name: "Porta banana", price: 20, description: "linda vasilha para banana, perfeita para evitar constrangimentos quanto ao formato que carregara em seu bolso")
Product.create(name: "quantificador de macarrão", price: 90, description: "excelente quantificador de macarrão para você que come feito um animal")
Product.create(name: "cortador de pizza em formato de bicicleta", price: 60, description: "um cortador pizza em formato de bicicleta que faz igual a todos os cortadores de pizza tradicionais, não corta nada")
