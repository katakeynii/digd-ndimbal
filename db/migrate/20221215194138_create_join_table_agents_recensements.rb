class CreateJoinTableAgentsRecensements < ActiveRecord::Migration[7.0]
  def change
    create_join_table :agents, :recensements do |t|
      # t.index [:agent_id, :recensement_id]
      # t.index [:recensement_id, :agent_id]
    end
  end
end
