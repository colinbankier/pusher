defmodule Pusher.StreamServer do
  require Logger

  def handle event do
    Logger.info "Streamer got event: #{inspect event}"
    Pusher.Endpoint.broadcast!("stream", "event", event)
  end
end
