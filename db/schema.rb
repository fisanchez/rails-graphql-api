Sequel.migration do
  change do
    create_table(:authors) do
      primary_key :id
      column :name, "varchar(255)"
      column :age, "integer"
    end
    
    create_table(:books) do
      primary_key :id
      column :name, "varchar(255)"
      column :genre, "varchar(255)"
      column :author_id, "integer"
    end
    
    create_table(:schema_info) do
      column :version, "integer", :default=>0, :null=>false
    end
  end
end
Sequel.migration do
  change do
    self << "INSERT INTO `schema_info` (`version`) VALUES (2)"
  end
end
