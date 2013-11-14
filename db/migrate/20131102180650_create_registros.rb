class CreateMedios < ActiveRecord::Migration
  def up
  	create_table :registros do |t|
      t.string :razon_social        
      t.date   :periodo        
      t.string :medio        
      t.string :pauta        
      t.float  :monto
  	end
  end

  def down
    drop_table :registros
  end
end
