class Article < ApplicationRecord
	has_many:comments, dependent: :destroy
 #scope :long_title, ->(n=5) {where("LENGTH(title) > ?",n)}
  validates :title, presence: true, uniqueness: true, length: { minimum:4}
  #validates :title, presence: { strict: true}, uniqueness: true, length: { minimum:4}
 # validates :title, :text, presence: {strict: true}
=begin
  after_initialize do |article|
    puts "you have initialized an object"
  end
  after_find do |article|
    puts "you have found an object"
  end
  after_save do |article|
    puts "you have saved an object"
  end
  after_create do |article|
    puts "you have created an object"
  end
  after_destroy do |article|
    puts "you have destroyed an object"
  end
  before_destroy do |article|
    puts "you are destroying an object "
  end
=end

end