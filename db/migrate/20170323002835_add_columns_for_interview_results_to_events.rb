class AddColumnsForInterviewResultsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :interview_results, :string, default: "PENDING"	
  end
end
