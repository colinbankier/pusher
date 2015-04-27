defmodule Pusher.StreamChannel do
  use Phoenix.Channel
  require Logger

  def join(topic, message, socket) do
    {:ok, socket}
  end

  def handle_in(topic = "event", message, socket) do
    broadcast socket, topic, message
    {:reply, :ok, socket}
  end
end
