defmodule SimplePlug.Plugstarter do

  def start_link() do
    {:ok, _} = Plug.Adapters.Cowboy.http SimplePlug.Router, []
  end

end
