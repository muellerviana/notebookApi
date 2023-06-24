namespace :dev do
  desc "Config development environment"
  task setup: :environment do
    puts "Cadastrando contatos"
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday(min_age: 18, max_age: 35)
      )
    puts "Contatos cadastrads com sucesso!"
    end
  end
end
