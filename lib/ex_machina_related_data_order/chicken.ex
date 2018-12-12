defmodule ExMachinaRelatedDataOrder.Chicken do
  use Ecto.Schema
  import Ecto.Changeset

  alias ExMachinaRelatedDataOrder.Coop

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "chickens" do
    field :name, :string

    belongs_to(:coop, Coop)

    timestamps()
  end

  @doc false
  def changeset(chicken, attrs) do
    chicken
    |> cast(attrs, [:name, :coop_id])
    |> validate_required([:name, :coop_id])
    |> assoc_constraint(:coop)
  end
end
