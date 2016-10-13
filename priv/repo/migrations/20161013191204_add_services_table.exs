defmodule Activio.Repo.Migrations.AddServicesTable do
  use Ecto.Migration

  def change do
    create table(:services) do
      add :name, :string

      timestamps
    end

    create index(:services, [:name], unique: true)
  end
end
