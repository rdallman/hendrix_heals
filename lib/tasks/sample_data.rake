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
    20.times do |n|
      bed = 'A'
      privacy = 'SP'
      Room.create!(number: n + 100,
                   bed: bed,
                   privacy: privacy,
                   patient_id: n)
    end
    20.times do |n|
      bed = 'B'
      privacy = 'SP'
      Room.create!(number: n+100,
                   bed: bed,
                   privacy: privacy,
                   patient_id: n+20)
    end
    10.times do |n|
      bed = 'A'
      privacy = 'PR'
      Room.create!(number: n+200,
                   bed: bed,
                   privacy: privacy,
                   patient_id: n+40)
    end
    10.times do |n|
      bed = 'B'
      privacy = 'PR'
      Room.create!(number: n+200,
                   bed: bed,
                   privacy: privacy,
                   patient_id: n+50)
    end
    99.times do |n|
      operations = ["Traecheotomy",
                    "Hand Replacement",
                    "Chemotherapy",
                    "Breast Reduction",
                    "Observation",
                    "Colonoscopy",
                    "Heart Transplant",
                    "Brain Surgery",
                    "Tonsillectomy",
                    "Iridectomy",
                    "Cystectomy",
                    "Room Visit",
                    "Mastectomy",
                    "Frenectomy",
                    "XRay",
                    "Cat Scan"]
      patient = Patient.all.sample
      doc = Physician.all.sample
      time = Random.new.rand(1..12)
      cost = Random.new.rand(100..10000)
      operation = operations.sample
      Procedure.create!(name: operation,
                        patient: patient,
                        physician: doc,
                        time: time,
                        cost: cost)

    end
  end
end

