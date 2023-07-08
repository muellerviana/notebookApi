namespace :dev do
  desc "Config development environment"
  task setup: :environment do

    puts "Cadastrando os kinds..."

    kinds = %w( Amigo Comercial Conhecido)

    kinds.each do |kind|
     Kind.create!(
      description: kind
     )
    end

    puts "Kinds cadstrados com sucesso"

    puts "Cadastrando contatos..."
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday(min_age: 18, max_age: 35),
        kind: Kind.all.sample
      )
    end
    puts "Contatos cadastrads com sucesso!"

  end
end
