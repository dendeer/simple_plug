defmodule SimplePlug.Router do
  use Plug.Router
  require Logger

  # plug Plug.Logger
  plug :match
  plug :dispatch

  def init(options) do
    # initialize your options here

    options
  end


  get "/" do
    # Get the parameters
    conn = fetch_query_params(conn)

    send_resp(conn, 200, "received #{inspect(conn.params)}")
  end


  match _ do
    IO.inspect(conn.params)
    send_resp(conn, 404, "oops")
  end

end
