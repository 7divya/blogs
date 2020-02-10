class Comment < ApplicationRecord
  belongs_to:article, autosave: true
  validates :body, presence: true


  	
  after_destroy :log_destroy_action
  def log_destroy_action
  	puts "Article destroyed"
  end
end
