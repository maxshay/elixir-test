defmodule BarnicleApiWeb.TestController do
  use BarnicleApiWeb, :controller

  def index(conn, _args) do

    json(conn, %{
      date: DateTime.utc_now |> DateTime.to_iso8601(),
      random_id: UUID.uuid4(),
    })
  end

  # def show(conn, _args) do

  #   json(conn, %{
  #     date: DateTime.utc_now |> DateTime.to_iso8601(),
  #     random_id: UUID.uuid4(),
  #   })
  # end

end
