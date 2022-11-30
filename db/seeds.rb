# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Clinic.destroy_all

Clinic.create(name: "Hoxton Clinic", address: "Hoxton, London", price: 200, user_id: 1)
Clinic.create(exam_type: "Ultrasound", body_part: "Transvaginal", address: "Balham, London", price: 300, user_id: 1)
Clinic.create(exam_type: "Pregnancy", body_part: "Pregnancy", address: "Notting Hill, London", price: 100, user_id: 1)
Clinic.create(exam_type: "Bone Density", body_part: "Lower Limb", address: "Peckham, London", price: 250, user_id: 1)
Clinic.create(exam_type: "Ultrasound", body_part: "Neck/Thyroid", address: "Stratford, London", price: 350, user_id: 1)
