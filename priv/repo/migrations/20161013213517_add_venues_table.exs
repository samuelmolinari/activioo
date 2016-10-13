defmodule Activio.Repo.Migrations.AddVenuesTable do
  use Ecto.Migration

  def change do
    create table(:venues) do
      add :name, :string
      add :coordinates, :point

      timestamps
    end
  end
end
