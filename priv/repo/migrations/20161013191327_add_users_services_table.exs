defmodule Activio.Repo.Migrations.AddUsersServicesTable do
  use Ecto.Migration

  def change do
    create table(:users_services) do
      add :user_id, references(:users)
      add :service_id, references(:services)
      add :value, :string

      timestamps
    end

    create index(:users_services, [:user_id, :service_id, :value], unique: true)
  end
end
