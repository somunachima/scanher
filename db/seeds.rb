# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)

Booking.destroy_all
Exam.destroy_all
Clinic.destroy_all
Timeslot.destroy_all

# !CLINIC SEED FILES
hoxton = Clinic.create!(name: "The Hoxton Clinic", address: "100 Hoxton Street, London")
lewagon = Clinic.create!(name: "Le Wagon Clinic", address: "148 Kingsland Road, London")
safe_zone = Clinic.create!(name: "The Safe Zone", address: "7 Sun Street, London")
jared_scans = Clinic.create!(name: "Jared's Scans", address: "23 Macklin St, London")
securiscan = Clinic.create!(name: "SecuriScan", address: "23 Haggerston Road, London")
jones = Clinic.create!(name: "Jones' Clinic", address: "151 Cassiobury Dr, Watford")
ruby = Clinic.create!(name: "Ruby Centre", address: "60 Rye Lane, Peckham")
ortho = Clinic.create!(name: "OrthoClinic", address: "Kensington High St, London")
elite = Clinic.create!(name: "Elite Wellness", address: "91 Harley Street, London")
scanher = Clinic.create!(name: "ScanHer Clinic", address: "47 Melbury Rd, London")
unachima = Clinic.create!(name: "Unachima Centre", address: "107 Great Russell St, London")


# !MRI SEED FILES
# mri = Service.create!(name: "MRI")
#   head = BodyPart.create!(name: "Brain/Head")
#     mri_head = ServicePart.create!(service: mri, body_part: head)
#   rleg = BodyPart.create!(name: "Leg - Right")
#     mri_rleg = ServicePart.create!(service: mri, body_part: rleg)
#   lleg = BodyPart.create!(name: "Leg - Left")
#     mri_lleg = ServicePart.create!(service: mri, body_part: lleg)
#   rhip = BodyPart.create!(name: "Hip - Right")
#     mri_rhip = ServicePart.create!(service: mri, body_part: rhip)
#   lhip = BodyPart.create!(name: "Hip - Left")
#     mri_lhip = ServicePart.create!(service: mri, body_part: lhip)
#   bhip = BodyPart.create!(name: "Hip - Bilateral")
#     mri_bhip = ServicePart.create!(service: mri, body_part: bhip)
#   rarm = BodyPart.create!(name: "Arm - Right")
#     mri_rarm = ServicePart.create!(service: mri, body_part: rarm)
#   larm = BodyPart.create!(name: "Arm - Left")
#     mri_larm = ServicePart.create!(service: mri, body_part: larm)
#   rknee = BodyPart.create!(name: "Knee - Right")
#     mri_rknee = ServicePart.create!(service: mri, body_part: rknee)
#   lknee = BodyPart.create!(name: "Knee - Left")
#     mri_lknee = ServicePart.create!(service: mri, body_part: lknee)
#   lower_back = BodyPart.create!(name: "Lower Back")
#     mri_lower_back = ServicePart.create!(service: mri, body_part: lower_back)
#   upper_back = BodyPart.create!(name: "Upper Back")
#     mri_upper_back = ServicePart.create!(service: mri, body_part: upper_back)

# !ULTRASOUND SEED FILES
# uss = Service.create!(name: "Ultrasound")
#   uss_head = ServicePart.create!(service: uss, body_part: head)
#   uss_rleg = ServicePart.create!(service: uss, body_part: rleg)
#   uss_lleg = ServicePart.create!(service: uss, body_part: lleg)
#   uss_rhip = ServicePart.create!(service: uss, body_part: rhip)
#   uss_lhip = ServicePart.create!(service: uss, body_part: lhip)
#   uss_bhip = ServicePart.create!(service: uss, body_part: bhip)
#   uss_rarm = ServicePart.create!(service: uss, body_part: rarm)
#   uss_larm = ServicePart.create!(service: uss, body_part: larm)
#   uss_rknee = ServicePart.create!(service: uss, body_part: rknee)
#   uss_lknee = ServicePart.create!(service: uss, body_part: lknee)

# !PREGNANCY SEED FILES
# Service.create!(name: "Pregnancy")

# !BONE DENSITY SCANS
# Service.create!(name: "Bone Density")

# !ECG
# Service.create!(name: "ECG")

# !CT
# Service.create!(name: "CT")

# !EXAM SEED FILES
# !Hoxton
hoxton_mri_head = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Brain/Head", price: 200)
hoxton_mri_neck = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Neck", price: 200)
hoxton_mri_leg = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_hip = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_bhip = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_arm = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_knee = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_lspine = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_uspine = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_wspine = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_pelvis = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_fbs = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_cardiac = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_shoulder = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_chest = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_ankle = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_wrist = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_elbow = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_tissue = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)
hoxton_mri_foot = Exam.create!(clinic: hoxton, service: "MRI", body_part: "Hip - Bilateral", price: 220)

hoxton_uss_head = Exam.create!(clinic: hoxton, service: "Ultrasound Scan", body_part: "Head/Neck", price: 200)

# !Le Wagon
lewagon_mri_head = Exam.create!(clinic: lewagon, service: "MRI", body_part: "Brain/Head", price: 290)
lewagon_mri_bhip = Exam.create!(clinic: lewagon, service: "MRI", body_part: "Hip - Bilateral", price: 400)
lewagon_uss_head = Exam.create!(clinic: lewagon, service: "Ultrasound Scan", body_part: "Head/Neck", price: 320)

# !Safe Zone
safe_zone_mri_head = Exam.create!(clinic: safe_zone, service: "MRI", body_part: "Brain/Head", price: 350)
safe_zone_mri_bhip = Exam.create!(clinic: safe_zone, service: "MRI", body_part: "Hip - Bilateral", price: 500)
safe_zone_uss_head = Exam.create!(clinic: safe_zone, service: "Ultrasound Scan", body_part: "Head/Neck", price: 300)

# !Jared Scans
jared_scans_mri_head = Exam.create!(clinic: jared_scans, service: "MRI", body_part: "Brain/Head", price: 10)
jared_scans_mri_bhip = Exam.create!(clinic: jared_scans, service: "MRI", body_part: "Hip - Bilateral", price: 45)
jared_scans_uss_head = Exam.create!(clinic: jared_scans, service: "Ultrasound Scan", body_part: "Head/Neck", price: 70)

# !SecuriScan
securiscan_mri_head = Exam.create!(clinic: securiscan, service: "MRI", body_part: "Brain/Head", price: 600)
securiscan_mri_bhip = Exam.create!(clinic: securiscan, service: "MRI", body_part: "Hip - Bilateral", price: 900)
securiscan_uss_head = Exam.create!(clinic: securiscan, service: "Ultrasound Scan", body_part: "Head/Neck", price: 450)


# !Jones' Clinic

# !Ruby Centre

# !OrthoClinic

# !Elite Wellness

# !ScanHer Clinic

# !Unachima Centre


# !TIMESLOTS
Timeslot.create!(exam: hoxton_mri_head, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: hoxton_mri_head, date: Time.new(2022, 12, 14, 9, 45, 0))
Timeslot.create!(exam: hoxton_mri_head, date: Time.new(2022, 12, 14, 10, 30, 0))
Timeslot.create!(exam: hoxton_mri_head, date: Time.new(2022, 12, 14, 12, 20, 0))
Timeslot.create!(exam: hoxton_mri_head, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: hoxton_mri_head, date: Time.new(2022, 12, 14, 14, 50, 0))
Timeslot.create!(exam: hoxton_mri_head, date: Time.new(2022, 12, 14, 15, 30, 0))
Timeslot.create!(exam: hoxton_mri_head, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: hoxton_mri_head, date: Time.new(2022, 12, 14, 16, 45, 0))
Timeslot.create!(exam: hoxton_mri_bhip, date: Time.new(2022, 12, 15, 9, 0, 0))
Timeslot.create!(exam: hoxton_mri_bhip, date: Time.new(2022, 12, 15, 10, 30, 0))
Timeslot.create!(exam: hoxton_mri_bhip, date: Time.new(2022, 12, 15, 11, 10, 0))
Timeslot.create!(exam: hoxton_mri_bhip, date: Time.new(2022, 12, 15, 11, 45, 0))
Timeslot.create!(exam: hoxton_mri_bhip, date: Time.new(2022, 12, 15, 12, 10, 0))
Timeslot.create!(exam: hoxton_mri_bhip, date: Time.new(2022, 12, 16, 14, 45, 0))
Timeslot.create!(exam: hoxton_mri_bhip, date: Time.new(2022, 12, 16, 15, 30, 0))
Timeslot.create!(exam: hoxton_mri_bhip, date: Time.new(2022, 12, 16, 16, 15, 0))
Timeslot.create!(exam: hoxton_uss_head, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: hoxton_uss_head, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: hoxton_uss_head, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: hoxton_uss_head, date: Time.new(2022, 12, 16, 12, 0, 0))
Timeslot.create!(exam: hoxton_uss_head, date: Time.new(2022, 12, 16, 14, 0, 0))
Timeslot.create!(exam: hoxton_uss_head, date: Time.new(2022, 12, 16, 15, 0, 0))
Timeslot.create!(exam: hoxton_uss_head, date: Time.new(2022, 12, 16, 16, 0, 0))
Timeslot.create!(exam: hoxton_uss_head, date: Time.new(2022, 12, 16, 17, 0, 0))

Timeslot.create!(exam: lewagon_mri_head, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: lewagon_mri_head, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: lewagon_mri_head, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: lewagon_mri_head, date: Time.new(2022, 12, 14, 12, 0, 0))
Timeslot.create!(exam: lewagon_mri_head, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: lewagon_mri_head, date: Time.new(2022, 12, 14, 15, 0, 0))
Timeslot.create!(exam: lewagon_mri_head, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: lewagon_mri_head, date: Time.new(2022, 12, 14, 17, 0, 0))
Timeslot.create!(exam: lewagon_mri_bhip, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: lewagon_mri_bhip, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: lewagon_mri_bhip, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: lewagon_mri_bhip, date: Time.new(2022, 12, 14, 12, 0, 0))
Timeslot.create!(exam: lewagon_mri_bhip, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: lewagon_mri_bhip, date: Time.new(2022, 12, 14, 15, 0, 0))
Timeslot.create!(exam: lewagon_mri_bhip, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: lewagon_mri_bhip, date: Time.new(2022, 12, 14, 17, 0, 0))
Timeslot.create!(exam: lewagon_uss_head, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: lewagon_uss_head, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: lewagon_uss_head, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: lewagon_uss_head, date: Time.new(2022, 12, 14, 12, 0, 0))
Timeslot.create!(exam: lewagon_uss_head, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: lewagon_uss_head, date: Time.new(2022, 12, 14, 15, 0, 0))
Timeslot.create!(exam: lewagon_uss_head, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: lewagon_uss_head, date: Time.new(2022, 12, 14, 17, 0, 0))

Timeslot.create!(exam: safe_zone_mri_head, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: safe_zone_mri_head, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: safe_zone_mri_head, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: safe_zone_mri_head, date: Time.new(2022, 12, 14, 12, 0, 0))
Timeslot.create!(exam: safe_zone_mri_head, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: safe_zone_mri_head, date: Time.new(2022, 12, 14, 15, 0, 0))
Timeslot.create!(exam: safe_zone_mri_head, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: safe_zone_mri_head, date: Time.new(2022, 12, 14, 17, 0, 0))
Timeslot.create!(exam: safe_zone_mri_bhip, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: safe_zone_mri_bhip, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: safe_zone_mri_bhip, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: safe_zone_mri_bhip, date: Time.new(2022, 12, 14, 12, 0, 0))
Timeslot.create!(exam: safe_zone_mri_bhip, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: safe_zone_mri_bhip, date: Time.new(2022, 12, 14, 15, 0, 0))
Timeslot.create!(exam: safe_zone_mri_bhip, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: safe_zone_mri_bhip, date: Time.new(2022, 12, 14, 17, 0, 0))
Timeslot.create!(exam: safe_zone_uss_head, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: safe_zone_uss_head, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: safe_zone_uss_head, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: safe_zone_uss_head, date: Time.new(2022, 12, 14, 12, 0, 0))
Timeslot.create!(exam: safe_zone_uss_head, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: safe_zone_uss_head, date: Time.new(2022, 12, 14, 15, 0, 0))
Timeslot.create!(exam: safe_zone_uss_head, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: safe_zone_uss_head, date: Time.new(2022, 12, 14, 17, 0, 0))

Timeslot.create!(exam: jared_scans_mri_head, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: jared_scans_mri_head, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: jared_scans_mri_head, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: jared_scans_mri_head, date: Time.new(2022, 12, 14, 12, 0, 0))
Timeslot.create!(exam: jared_scans_mri_head, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: jared_scans_mri_head, date: Time.new(2022, 12, 14, 15, 0, 0))
Timeslot.create!(exam: jared_scans_mri_head, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: jared_scans_mri_head, date: Time.new(2022, 12, 14, 17, 0, 0))
Timeslot.create!(exam: jared_scans_mri_bhip, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: jared_scans_mri_bhip, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: jared_scans_mri_bhip, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: jared_scans_mri_bhip, date: Time.new(2022, 12, 14, 12, 0, 0))
Timeslot.create!(exam: jared_scans_mri_bhip, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: jared_scans_mri_bhip, date: Time.new(2022, 12, 14, 15, 0, 0))
Timeslot.create!(exam: jared_scans_mri_bhip, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: jared_scans_mri_bhip, date: Time.new(2022, 12, 14, 17, 0, 0))
Timeslot.create!(exam: jared_scans_uss_head, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: jared_scans_uss_head, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: jared_scans_uss_head, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: jared_scans_uss_head, date: Time.new(2022, 12, 14, 12, 0, 0))
Timeslot.create!(exam: jared_scans_uss_head, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: jared_scans_uss_head, date: Time.new(2022, 12, 14, 15, 0, 0))
Timeslot.create!(exam: jared_scans_uss_head, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: jared_scans_uss_head, date: Time.new(2022, 12, 14, 17, 0, 0))

Timeslot.create!(exam: securiscan_mri_head, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: securiscan_mri_head, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: securiscan_mri_head, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: securiscan_mri_head, date: Time.new(2022, 12, 14, 12, 0, 0))
Timeslot.create!(exam: securiscan_mri_head, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: securiscan_mri_head, date: Time.new(2022, 12, 14, 15, 0, 0))
Timeslot.create!(exam: securiscan_mri_head, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: securiscan_mri_head, date: Time.new(2022, 12, 14, 17, 0, 0))
Timeslot.create!(exam: securiscan_mri_bhip, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: securiscan_mri_bhip, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: securiscan_mri_bhip, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: securiscan_mri_bhip, date: Time.new(2022, 12, 14, 12, 0, 0))
Timeslot.create!(exam: securiscan_mri_bhip, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: securiscan_mri_bhip, date: Time.new(2022, 12, 14, 15, 0, 0))
Timeslot.create!(exam: securiscan_mri_bhip, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: securiscan_mri_bhip, date: Time.new(2022, 12, 14, 17, 0, 0))
Timeslot.create!(exam: securiscan_uss_head, date: Time.new(2022, 12, 14, 9, 0, 0))
Timeslot.create!(exam: securiscan_uss_head, date: Time.new(2022, 12, 14, 10, 0, 0))
Timeslot.create!(exam: securiscan_uss_head, date: Time.new(2022, 12, 14, 11, 0, 0))
Timeslot.create!(exam: securiscan_uss_head, date: Time.new(2022, 12, 14, 12, 0, 0))
Timeslot.create!(exam: securiscan_uss_head, date: Time.new(2022, 12, 14, 14, 0, 0))
Timeslot.create!(exam: securiscan_uss_head, date: Time.new(2022, 12, 14, 15, 0, 0))
Timeslot.create!(exam: securiscan_uss_head, date: Time.new(2022, 12, 14, 16, 0, 0))
Timeslot.create!(exam: securiscan_uss_head, date: Time.new(2022, 12, 14, 17, 0, 0))


# !PLACEHOLDER LIST FOR BODY PARTS
# BodyPart.create!(name: "Brain/Head")
# BodyPart.create!(name: "Breast - Left")
# BodyPart.create!(name: "Breast - Right")
# BodyPart.create!(name: "Breast - Bilateral")
# BodyPart.create!(name: "Transvaginal")
# BodyPart.create!(name: "Abdominal")
# BodyPart.create!(name: "Head/Neck")
# BodyPart.create!(name: "Neck/Thyroid")
# BodyPart.create!(name: "Leg - Right")
# BodyPart.create!(name: "Leg - Left")
# BodyPart.create!(name: "Hip - Right")
# BodyPart.create!(name: "Hip - Left")
# BodyPart.create!(name: "Hip - Bilateral")
# BodyPart.create!(name: "Arm - Right")
# BodyPart.create!(name: "Arm - Left")
# BodyPart.create!(name: "Knee - Right")
# BodyPart.create!(name: "Knee - Left")
# BodyPart.create!(name: "Lower Back")
# BodyPart.create!(name: "Upper Back")
# BodyPart.create!(name: "Pelvis")
# BodyPart.create!(name: "Whole Spine")
# BodyPart.create!(name: "Cardiac")
# BodyPart.create!(name: "Full Body Scan")
# BodyPart.create!(name: "Shoulder - Left")
# BodyPart.create!(name: "Shoulder - Right")
# BodyPart.create!(name: "Chest")
# BodyPart.create!(name: "Ankle - Right")
# BodyPart.create!(name: "Ankle - Left")
# BodyPart.create!(name: "Wrist - Left")
# BodyPart.create!(name: "Wrist - Right")
# BodyPart.create!(name: "Elbow - Left")
# BodyPart.create!(name: "Elbow - Right")
# BodyPart.create!(name: "Soft Tissue (Muscular/Ligamental)")
# BodyPart.create!(name: "Foot - Left (Morton's Neuroma)")
# BodyPart.create!(name: "Foot - Right (Morton's Neuroma)")
