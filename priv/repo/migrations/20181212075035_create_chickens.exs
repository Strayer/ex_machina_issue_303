defmodule ExMachinaRelatedDataOrder.Repo.Migrations.CreateChickens do
  use Ecto.Migration

  def change do
    create table(:chickens, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :coop_id, references(:coops, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:chickens, [:coop_id])
  end
end
