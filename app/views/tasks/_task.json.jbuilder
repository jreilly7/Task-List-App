json.extract! task, :id, :title, :description, :priority, :due_date, :is_completed_toggle, :task_list_id, :created_at, :updated_at
json.url task_url(task, format: :json)