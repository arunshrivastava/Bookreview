class Book < ApplicationRecord
	belongs_to :user
    belongs_to :category
  
  has_attached_file :book_img, styles: { book_index: "100x500>", book_show: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/


  # has_attached_file :book_img, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/books/:style/missing.jpg"
  # validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/

# mount_uploader :image ,ImageUploader

      # has_attached_file :book_img, styles: lambda { |attachment| { thumb: (attachment.instance.book_img? ? "250x350>" : "325x475>") } }
      # validates_attachment_content_type :book_img, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
      # has_attached_file :book_img, :styles => { :book_index => "250x350>", :book_show => "325x475>"},
      # validates_attachment_content_type :book_img

end
