defmodule ExMachinaRelatedDataOrder.Coop do
  use Ecto.Schema
  import Ecto.Changeset

  alias ExMachinaRelatedDataOrder.Chicken

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "coops" do
    field :name, :string

    has_many(:chickens, Chicken)

    timestamps()
  end

  @doc false
  def changeset(coop, attrs) do
    coop
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
