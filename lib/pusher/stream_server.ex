defmodule Pusher.StreamServer do
  require Logger

  def handle event do
    Logger.info "Streamer got event: #{event}"
  end
end
