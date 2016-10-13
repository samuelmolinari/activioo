defmodule Activio.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string
      add :full_name, :string

      timestamps
    end

    create index(:users, [:username], unique: true)
  end
end
