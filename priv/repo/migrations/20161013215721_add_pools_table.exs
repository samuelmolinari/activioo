defmodule Activio.Repo.Migrations.AddPoolsTable do
  use Ecto.Migration

  def change do
    create table(:pools) do
      add :name, :string
      add :event_id, references(:events)

      timestamps
    end

    create index(:pools, [:name, :event_id], unique: true)
  end
end
