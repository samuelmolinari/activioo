defmodule Activio.Repo.Migrations.AddParticipantTypesTable do
  use Ecto.Migration

  def change do
    create table(:participant_types) do
      add :name, :string
    end

    create index(:participant_types, [:name], unique: true)
  end
end
