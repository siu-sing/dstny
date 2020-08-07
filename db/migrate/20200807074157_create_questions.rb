class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :question_text
      t.text :description

      t.timestamps
    end
  end
end
