namespace :db do
  desc "Fill db with sample data"
  task populate: :environment do
    create_rooms
    create_patients_and_physicians
    create_treatments
    create_procedures
  end
end

def create_rooms
  40.times do |n|
    bed = 'A'
    privacy = 'SP'
    Room.create!(number: n+100,
                 bed: bed,
                 privacy: privacy)
  end
  40.times do |n|
    bed = 'B'
    privacy = 'SP'
    Room.create!(number: n+100,
                 bed: bed,
                 privacy: privacy)
  end
  20.times do |n|
    bed = 'A'
    privacy = 'PR'
    Room.create!(number: n+200,
                 bed: bed,
                 privacy: privacy)
  end
end

def create_patients_and_physicians
  80.times do |n|
    name = Faker::Name.name
    addr = Faker::Address.street_address
    date = Date.today
    zip = Faker::Address.zip_code
    state = Faker::Address.state_abbr
    city = Faker::Address.city
    room = Room.all.at(n)
    Patient.create!(name: name,
                    street_address: addr,
                    admit_date: date,
                    zip: zip,
                    state: state,
                    city: city,
                    room: room)
    name = Faker::Name.name
    office = n+1
    phone = Faker::PhoneNumber.phone_number
    Physician.create!(name: name,
                      office: office,
                      phone: phone)
  end
end

def create_procedures
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
    time = [1..12].sample
    treatment = Treatment.all.sample
    operation = operations.sample
    Procedure.create!(name: operation,
                      patient: patient,
                      treatment: treatment,
                      physician: doc,
                      time: time)
  end
end

def create_treatments
  Treatment.create!(category: "Surgery 1",
                    cost: 10000)
  Treatment.create!(category: "Surgery 2",
                    cost: 7000)
  Treatment.create!(category: "OutPatient1",
                    cost: 1500)
  Treatment.create!(category: "OutPatient2",
                    cost: 900)
  Treatment.create!(category: "OutPatient3",
                    cost: 500)
  Treatment.create!(category: "Phys. Therapy",
                    cost: 300)
  Treatment.create!(category: "X-Ray",
                    cost: 300)
  Treatment.create!(category: "Blood Test",
                    cost: 75)
  Treatment.create!(category: "Resp. Therapy",
                    cost: 200)
  Treatment.create!(category: "Room Visit",
                    cost: 50)
  Treatment.create!(category: "Attendant Care",
                    cost: 50)
  Treatment.create!(category: "Dr. Consultn.",
                    cost: 100)
end

