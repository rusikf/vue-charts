class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :audio_segments do |t|
      t.belongs_to :user
      t.datetime :started_at
      t.datetime :ended_at
      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.timestamps
    end
  end
end
