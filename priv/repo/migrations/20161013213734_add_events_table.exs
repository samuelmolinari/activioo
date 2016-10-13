defmodule Activio.Repo.Migrations.AddEventsTable do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :name, :string
      add :start_time, :datetime
      add :group_activity_id, references(:groups_activities)
      add :venue_id, references(:venues)

      timestamps
    end
  end
end
