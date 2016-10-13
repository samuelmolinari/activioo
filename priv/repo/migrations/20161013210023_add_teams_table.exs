defmodule Activio.Repo.Migrations.AddTeamsTable do
  use Ecto.Migration

  def change do
    create table(:teams) do
      add :name, :string
      add :group_id, references(:groups)

      timestamps
    end

    create index(:teams, [:name, :group_id], unique: true)
  end
end
