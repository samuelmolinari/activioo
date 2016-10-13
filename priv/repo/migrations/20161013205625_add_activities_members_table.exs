defmodule Activio.Repo.Migrations.AddActivitiesMembersTable do
  use Ecto.Migration

  def change do
    create table(:activities_members) do
      add :group_activity_id, references(:groups_activities)
      add :user_id, references(:users)

      timestamps
    end

    create index(:activities_members, [:group_activity_id, :user_id], unique: true)
  end
end
