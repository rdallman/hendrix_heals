namespace :db do
  desc "Fill db with sample data"
  task populate: :environment do
    99.times do |n|
      name = Faker::Name.name
      addr = Faker::Address.street_address
      date = Date.today
      zip = Faker::Address.zip_code
      state = Faker::Address.state_abbr
      city = Faker::Address.city
      Patient.create!(name: name,
                      street_address: addr,
                      admit_date: date,
                      zip: zip,
                      state: state,
                      city: city)
      name = Faker::Name.name
      office = n+1
      phone = Faker::PhoneNumber.phone_number
      Physician.create!(name: name,
                        office: office,
                        phone: phone)
    end
  end
end

