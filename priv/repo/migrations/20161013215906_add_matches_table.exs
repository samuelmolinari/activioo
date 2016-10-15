defmodule Activio.Repo.Migrations.AddMatchesTable do
  use Ecto.Migration

  def change do
    create table(:matches) do
      add :pool_id, references(:pools)
      add :venue_id, references(:venues)
      add :start_time, :datetime

      timestamps
    end
  end
end
