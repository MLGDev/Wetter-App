class CreateAufgabes < ActiveRecord::Migration[8.0]
  def change
    create_table :aufgabes do |t|
      t.string :aufgabe
      t.string :dringlichkeit
      t.string :schwierigkeit

      t.timestamps
    end
  end
end
