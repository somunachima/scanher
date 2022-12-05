class Exam < ApplicationRecord
  belongs_to :clinic
  has_many :timeslots, dependent: :destroy

  SERVICE = ["MRI", "CT", "Ultrasound Scan", "Pregnancy"]
  # To call on - Exam::SERVICE
  BODY_PART = ["Breast", "Lumps & Bumps", "Ovarian", "Armpit/Axilla", "Hernia", "Pregnancy Scan", "Brain/Head", "Neck & Thyroid", "Transvaginal", "Leg", "Hip", "Hip - Bilateral", "Arm", "Knee", "Lower Spine", "Upper Spine", "Whole Spine", "Pelvis", "Full Body Scan", "Cardiac (Heart)", "Shoulder", "Chest", "Ankle", "Wrist", "Elbow", "Soft Tissue (Muscular/Ligamental", "Foot (Morton's Neuroma)", "Abdominal", "Facial Bones", "Fracture Assessment", "Pelvic", "Kidney & Renal", "Musculoskeletal (MSK)", "Vascular & Arterial", "Testicular"]
  # To call on - Exam::BODY_PART
end
