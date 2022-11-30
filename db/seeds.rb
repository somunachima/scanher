# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Clinic.destroy_all

hoxton = Clinic.create(name: "The Hoxton Clinic", address: "100 Hoxton Street")
lewagon = Clinic.create(name: "LeWagon Clinic", address: "148 Kingsland Road")
safe_zone = Clinic.create(name: "The Safe Zone", address: "1 Shoreditch Road")
jared_scans = Clinic.create(name: "Jared's Totally Safe Scans", address: "22B Alley Way")
securiscan = Clinic.create(name: "SecuriScan", address: "23 Haggerston Road")


Service.destroy_all
BodyPart.destroy_all
ServicePart.destory_all

# MRI SEED FILES
mri = Service.create(name: "MRI")
  head = BodyPart.create(name: "Brain/Head")
    mri_head = ServicePart.create(service: mri, body_part: head)
  rleg = BodyPart.create(name: "Leg - Right")
    mri_rleg = ServicePart.create(service: mri, body_part: rleg)
  lleg = BodyPart.create(name: "Leg - Left")
    mri_lleg = ServicePart.create(service: mri, body_part: lleg)

uss = Service.create(name: "Ultrasound")
  #head
    ServicePart.create(service: uss, body_part: head)

Service.create(name: "Pregnancy")
Service.create(name: "Bone Density")
Service.create(name: "ECG")
Service.create(name: "CT")

Exam.create(clinic: hoxton, service_part: mri_head, price: 120)

# PLACEHOLDER LIST FOR BODY PARTS - TO BE ADDED ABOVE
BodyPart.create(name: "Brain/Head")
BodyPart.create(name: "Breast - Left")
BodyPart.create(name: "Breast - Right")
BodyPart.create(name: "Breast - Bilateral")
BodyPart.create(name: "Transvaginal")
BodyPart.create(name: "Abdominal")
BodyPart.create(name: "Head/Neck")
BodyPart.create(name: "Neck/Thyroid")
BodyPart.create(name: "Leg - Right")
BodyPart.create(name: "Leg - Left")
BodyPart.create(name: "Hip - Right")
BodyPart.create(name: "Hip - Left")
BodyPart.create(name: "Hip - Bilateral")
BodyPart.create(name: "Arm - Right")
BodyPart.create(name: "Arm - Left")
BodyPart.create(name: "Knee - Right")
BodyPart.create(name: "Knee - Left")
BodyPart.create(name: "Lower Back")
BodyPart.create(name: "Upper Back")
BodyPart.create(name: "Pelvis")
BodyPart.create(name: "Whole Spine")
BodyPart.create(name: "Cardiac")
BodyPart.create(name: "Full Body Scan")
BodyPart.create(name: "Shoulder - Left")
BodyPart.create(name: "Shoulder - Right")
BodyPart.create(name: "Chest")
BodyPart.create(name: "Ankle - Right")
BodyPart.create(name: "Ankle - Left")
BodyPart.create(name: "Wrist - Left")
BodyPart.create(name: "Wrist - Right")
BodyPart.create(name: "Elbow - Left")
BodyPart.create(name: "Elbow - Right")
BodyPart.create(name: "Soft Tissue (Muscular/Ligamental)")
BodyPart.create(name: "Foot - Left (Morton's Neuroma)")
BodyPart.create(name: "Foot - Right (Morton's Neuroma)")
