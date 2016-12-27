class Listing < ApplicationRecord
  has_attached_file :image, styles: {large: "600x600>", medium: "300x300>", thumb: "150x150>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


  has_many :shares

  def self.search(search)
    if search
        where(["property LIKE ?", "%#{search}%"])
    else
          all
    end
  end
end
