class Task < ActiveRecord::Base
  belongs_to :task_list

  belongs_to :user

  validates :title, :priority, :due_date, :task_list, presence:true
  validates :priority, numericality:true
  validates :priority, inclusion: {in: 1..10}

  scope :completed, -> {where(is_completed_toggle: true).order("created_at desc")}
  scope :pending, -> {where(is_completed_toggle: false).order("created_at asc")}


end
