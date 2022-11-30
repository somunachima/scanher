# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Clinic.destroy_all
Service.destroy_all
BodyPart.destroy_all
ServicePart.destroy_all
Exam.destroy_all


# !CLINIC SEED FILES
hoxton = Clinic.create(name: "The Hoxton Clinic", address: "100 Hoxton Street")
lewagon = Clinic.create(name: "LeWagon Clinic", address: "148 Kingsland Road")
safe_zone = Clinic.create(name: "The Safe Zone", address: "1 Shoreditch Road")
jared_scans = Clinic.create(name: "Jared's Totally Safe Scans", address: "22B Alley Way")
securiscan = Clinic.create(name: "SecuriScan", address: "23 Haggerston Road")


# !MRI SEED FILES
mri = Service.create(name: "MRI")
  head = BodyPart.create(name: "Brain/Head")
    mri_head = ServicePart.create(service: mri, body_part: head)
  rleg = BodyPart.create(name: "Leg - Right")
    mri_rleg = ServicePart.create(service: mri, body_part: rleg)
  lleg = BodyPart.create(name: "Leg - Left")
    mri_lleg = ServicePart.create(service: mri, body_part: lleg)
  rhip = BodyPart.create(name: "Hip - Right")
    mri_rhip = ServicePart.create(service: mri, body_part: rhip)
  lhip = BodyPart.create(name: "Hip - Left")
    mri_lhip = ServicePart.create(service: mri, body_part: lhip)
  bhip = BodyPart.create(name: "Hip - Bilateral")
    mri_bhip = ServicePart.create(service: mri, body_part: bhip)
  rarm = BodyPart.create(name: "Arm - Right")
    mri_rarm = ServicePart.create(service: mri, body_part: rarm)
  larm = BodyPart.create(name: "Arm - Left")
    mri_larm = ServicePart.create(service: mri, body_part: larm)
  rknee = BodyPart.create(name: "Knee - Right")
    mri_rknee = ServicePart.create(service: mri, body_part: rknee)
  lknee = BodyPart.create(name: "Knee - Left")
    mri_lknee = ServicePart.create(service: mri, body_part: lknee)
  lower_back = BodyPart.create(name: "Lower Back")
    mri_lower_back = ServicePart.create(service: mri, body_part: lower_back)
  upper_back = BodyPart.create(name: "Upper Back")
    mri_upper_back = ServicePart.create(service: mri, body_part: upper_back)

# !ULTRASOUND SEED FILES
uss = Service.create(name: "Ultrasound")
  #head
    uss_head = ServicePart.create(service: uss, body_part: head)

# !PREGNANCY SEED FILES
Service.create(name: "Pregnancy")

# !BONE DENSITY SCANS
Service.create(name: "Bone Density")

# !ECG
Service.create(name: "ECG")

# !CT
Service.create(name: "CT")

# !EXAM SEED FILES
hoxton_mri_head = Exam.create(clinic: hoxton, service_part: mri_head, price: 300)
hoxton_mri_bhip = Exam.create(clinic: hoxton, service_part: mri_bhip, price: 220)
hoxton_uss_head = Exam.create(clinic: hoxton, service_part: uss_head, price: 200)
lewagon_mri_head = Exam.create(clinic: lewagon, service_part: mri_head, price: 290)
lewagon_mri_bhip = Exam.create(clinic: lewagon, service_part: mri_bhip, price: 400)
lewagon_uss_head = Exam.create(clinic: lewagon, service_part: uss_head, price: 320)
safe_zone_mri_head = Exam.create(clinic: safe_zone, service_part: mri_head, price: 350)
safe_zone_mri_bhip = Exam.create(clinic: safe_zone, service_part: mri_bhip, price: 500)
safe_zone_uss_head = Exam.create(clinic: safe_zone, service_part: uss_head, price: 300)
jared_scans_mri_head = Exam.create(clinic: jared_scans, service_part: mri_head, price: 10)
jared_scans_mri_bhip = Exam.create(clinic: jared_scans, service_part: mri_bhip, price: 45)
jared_scans_uss_head = Exam.create(clinic: jared_scans, service_part: uss_head, price: 70)
securiscan_mri_head = Exam.create(clinic: securiscan, service_part: mri_head, price: 600)
securiscan_mri_bhip = Exam.create(clinic: securiscan, service_part: mri_bhip, price: 900)
securiscan_uss_head = Exam.create(clinic: securiscan, service_part: uss_head, price: 450)

# !TIMESLOTS
# Timeslot.create(exam: hoxton_mri_head, date: Date.new(2022, 12, 14), time: Time.new(13, 15))


# !PLACEHOLDER LIST FOR BODY PARTS
# BodyPart.create(name: "Brain/Head")
# BodyPart.create(name: "Breast - Left")
# BodyPart.create(name: "Breast - Right")
# BodyPart.create(name: "Breast - Bilateral")
# BodyPart.create(name: "Transvaginal")
# BodyPart.create(name: "Abdominal")
# BodyPart.create(name: "Head/Neck")
# BodyPart.create(name: "Neck/Thyroid")
# BodyPart.create(name: "Leg - Right")
# BodyPart.create(name: "Leg - Left")
# BodyPart.create(name: "Hip - Right")
# BodyPart.create(name: "Hip - Left")
# BodyPart.create(name: "Hip - Bilateral")
# BodyPart.create(name: "Arm - Right")
# BodyPart.create(name: "Arm - Left")
# BodyPart.create(name: "Knee - Right")
# BodyPart.create(name: "Knee - Left")
# BodyPart.create(name: "Lower Back")
# BodyPart.create(name: "Upper Back")
# BodyPart.create(name: "Pelvis")
# BodyPart.create(name: "Whole Spine")
# BodyPart.create(name: "Cardiac")
# BodyPart.create(name: "Full Body Scan")
# BodyPart.create(name: "Shoulder - Left")
# BodyPart.create(name: "Shoulder - Right")
# BodyPart.create(name: "Chest")
# BodyPart.create(name: "Ankle - Right")
# BodyPart.create(name: "Ankle - Left")
# BodyPart.create(name: "Wrist - Left")
# BodyPart.create(name: "Wrist - Right")
# BodyPart.create(name: "Elbow - Left")
# BodyPart.create(name: "Elbow - Right")
# BodyPart.create(name: "Soft Tissue (Muscular/Ligamental)")
# BodyPart.create(name: "Foot - Left (Morton's Neuroma)")
# BodyPart.create(name: "Foot - Right (Morton's Neuroma)")
