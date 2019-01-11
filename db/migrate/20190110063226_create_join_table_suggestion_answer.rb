class CreateJoinTableSuggestionAnswer < ActiveRecord::Migration
  def change
    create_join_table :suggestions, :answers do |t|
      # t.index [:suggestion_id, :answer_id]
      # t.index [:answer_id, :suggestion_id]
      t.index [:suggestion_id, :answer_id]
    end
  end
end
