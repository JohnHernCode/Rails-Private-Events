class ChangeAttendancesColumns < ActiveRecord::Migration[6.1]
  def change
    rename_column :attendances, :user_id, :event_attendee_id
    rename_column :attendances, :event_id, :attended_event_id
  end
end
