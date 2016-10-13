defmodule Activio.Repo.Migrations.AddTeamsMembers do
  use Ecto.Migration

  def change do
    create table(:teams_members) do
      add :team_id, references(:teams)
      add :user_id, references(:users)

      timestamps
    end

    create index(:teams_members, [:team_id, :user_id], unique: true)
  end
end
