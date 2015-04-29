defmodule Pusher.StreamServer do
  require Logger

  def handle event do
    Logger.info "Streamer got event: #{inspect event}"
    if allow?(event), do: push(event)
  end

  def allow? event do
    event["name"] == "page_view"
  end


  def push event do
    Pusher.Endpoint.broadcast!("stream", "event", event)
  end
end
