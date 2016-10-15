defmodule Activio.Repo.Migrations.AddMatchesParticipantsTable do
  use Ecto.Migration

  def change do
    create table(:matches_participants) do
      add :user_id, references(:users)
      add :team_id, references(:teams)
      add :match_id, references(:matches)
      add :pool_id, references(:pools)
      add :type_id, references(:participant_types)

      timestamps
    end

    create index(:matches_participants, [:user_id, :match_id], unique: true)
  end
end
