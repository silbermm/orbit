defmodule Orbit.Static do
  @behaviour Orbit.Pipe

  import Orbit.Controller
  import Orbit.Transaction

  alias Orbit.Transaction

  def call(%Transaction{} = trans, opts) do
    static_path = opts[:from] || "the :from option is required"
    request_path = trans.params["path"] || raise "the :path param must be specified in the route"

    file_path = Path.join(static_path, request_path)

    if File.exists?(file_path) do
      send_file(trans, file_path)
    else
      put_status(trans, :not_found)
    end
  end
end
