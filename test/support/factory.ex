defmodule ExMachinaRelatedDataOrder.Factory do
  use ExMachina.Ecto, repo: ExMachinaRelatedDataOrder.Repo

  def coop_factory do
    %ExMachinaRelatedDataOrder.Coop{
      name: "Coop",
      chickens: [
        build(:chicken, %{name: "Chicken 1"}),
        build(:chicken, %{name: "Chicken 2"}),
        build(:chicken, %{name: "Chicken 3"})
      ]
    }
  end

  def chicken_factory do
    %ExMachinaRelatedDataOrder.Chicken{
      name: "Chicken"
    }
  end
end
