defmodule Activio.Repo.Migrations.AddGroupsTable do
  use Ecto.Migration

  def change do
    create table(:groups) do
      add :name, :string
      add :slack_team_id, :string
      add :slack_channel_id, :string

      timestamps
    end

    create index(:groups, [:slack_team_id], unique: true)
    create index(:groups, [:slack_channel_id], unique: true)
  end
end
