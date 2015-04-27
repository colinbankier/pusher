defmodule Pusher.EventConsumer do
  use Kcl.RecordProcessor
  alias Pusher.StreamServer

  @server :"server@127.0.0.1"

  def init_processor(options) do
    super options
    Node.connect(@server)
  end

  def process_record data do
    {:ok, event} = JSX.decode(data)
    Node.spawn(@server, Pusher.StreamServer, :handle, [event])
  end
end
