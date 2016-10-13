defmodule Activio.Repo.Migrations.AddUsersGroupsTable do
  use Ecto.Migration

  def change do
    create table(:users_groups) do
      add :user_id, references(:users)
      add :group_id, references(:groups)
      add :is_admin, :boolean, default: false

      timestamps
    end

    create index(:users_groups, [:user_id, :group_id], unique: true)
  end
end
