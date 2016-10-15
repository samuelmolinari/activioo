defmodule Activio.Repo.Migrations.AddEventsParticipantsTable do
  use Ecto.Migration

  def change do
    create table(:events_participants) do
      add :event_id, references(:events)
      add :user_id, references(:users)

      timestamps
    end

    create index(:events_participants, [:event_id, :user_id], unique: true)
  end
end
