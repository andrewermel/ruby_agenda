namespace :dev do
  desc "configurando o ambiente de desenvolvimento"
  task setup: :environment do
    puts"cadastrando os contatos ..."
    100.times do |i|
      Contact.create!(
        name:Faker::Name.name,
        email:Faker::Internet.email,
        birthdate:Faker::Date.between(from:65.years.ago, to:18.years.ago)
      )
    end
    puts "contatos cadastrados com sucessos!"
  end

end
