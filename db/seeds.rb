# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

p 'seeding'
user = User.create!(name: 'Ricardo', address: 'São Paulo - Vila Msda', email: 'teste2@teste.com', password: '123456')
Product.create!(name: "Garfo para sopa", price: 50, description: "Um item perfeitamente inutil na hora de tomar a sua sopinha", user: user)
Product.create!(name: "Shampoo para careca", price: 40, description: "Indispensavel na hora de tomar banho", user: user)
Product.create!(name: "Porta banana", price: 20, description: "Linda vasilha para banana, perfeita para evitar constrangimentos quanto ao formato que carregara em seu bolso", user: user)
Product.create!(name: "Quantificador de macarrão", price: 90, description: "Excelente quantificador de macarrão para você que come feito um animal", user: user)
Product.create!(name: "Cortador de pizza em formato de bicicleta", price: 60, description: "Um cortador pizza em formato de bicicleta que faz igual a todos os cortadores de pizza tradicionais, não corta nada", user: user)
p 'created!'
