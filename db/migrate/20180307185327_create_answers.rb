class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.belongs_to :question
      t.text :description, null: false

      t.timestamps
    end
  end
end
