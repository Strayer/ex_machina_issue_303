defmodule ExMachinaRelatedDataOrder.CoopTest do
  use ExMachinaRelatedDataOrder.DataCase
  import ExMachinaRelatedDataOrder.Factory

  alias ExMachinaRelatedDataOrder.{Repo, Coop}

  test "Coop.get_all_coops/0 returns all coops" do
    coop = insert(:coop)

    assert Repo.preload(Coop.get_all_coops(), :chickens) == [coop]
  end

  test "Coop.get_all_coops/0 returns all coops (reverse order test)" do
    coop = insert(:coop)

    coops =
      Coop.get_all_coops()
      |> Repo.preload(:chickens)
      |> Enum.map(fn coop ->
        Map.replace(coop, :chickens, Enum.reverse(coop.chickens))
      end)

    assert coops == [coop]
  end
end
