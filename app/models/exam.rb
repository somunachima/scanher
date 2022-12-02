class Exam < ApplicationRecord
  belongs_to :clinic
  has_many :timeslots, dependent: :destroy

  SERVICE = ["MRI", "CT", "Ultrasound", "Pregnancy"]
  # To call on - Exam::SERVICE
  BODY_PART = ["Brain/Head", "Breast - Left", "Breast - Right", "Breast - Bilateral", "Transvaginal", "Abdominal", "Head/Neck", "Neck/Thyroid", "Leg - Right", "Leg - Left", "Hip - Right", "Hip - Left", "Hip - Bilateral", "Arm - Right", "Arm - Left", "Knee - Right", "Knee - Left", "Lower Back", "Upper Back", "Pelvis", "Whole Spine", "Cardiac", "Full Body Scan", "Shoulder - Left", "Shoulder - Right", "Chest", "Ankle - Right", "Ankle - Left", "Wrist - Left", "Wrist - Right", "Elbow - Left", "Elbow - Right", "Soft Tissue (Muscular/Ligamental)", "Foot - Left (Morton's Neuroma)", "Foot - Right (Morton's Neuroma)"]

  BODY_PART_USS = ["TEST", "Brain/Head", "Wrist - Right", "Elbow - Left", "Elbow - Right", "Soft Tissue (Muscular/Ligamental)", "Foot - Left (Morton's Neuroma)", "Foot - Right (Morton's Neuroma)"]
  # To call on - Exam::BODY_PART
end
