class TodoItem < ActiveRecord::Base
  belongs_to :todo_list

  validates :todo_list, presence: true
  validates :title, presence: true
  validates :content, presence: true

  before_create :generate_initial_show_time

  def generate_initial_show_time
    self.show_time.nil? ? ( self.show_time = DateTime.now ) : nil
  end
end