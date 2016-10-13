defmodule Activio.Repo.Migrations.AddGroupsActivitiesTable do
  use Ecto.Migration

  def change do
    create table(:groups_activities) do
      add :group_id, references(:groups)
      add :activity_id, references(:activities)

      timestamps
    end

    create index(:groups_activities, [:group_id, :activity_id], unique: true)
  end
end
