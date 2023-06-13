class AddGameIdToParticipant < ActiveRecord::Migration[7.0]
  def change
    add_column :participants, :game_id, :integer
  end
end
