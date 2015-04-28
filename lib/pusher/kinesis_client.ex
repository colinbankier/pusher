defmodule Pusher.KinesisClient do
  use GenServer

  def start_link do
    GenServer.start(__MODULE__, nil)
  end

  def init(_) do
    spawn(&run/0)
    {:ok, nil}
  end

  def run do
    Kcl.Executor.run config
  end

  defp config do
    [
      stream_name: System.get_env("EVENT_QUEUE_TOPIC"),
      executable_name: "./lib/event_consumer.sh",
      application_name: "pusher",
      max_records: 5,
      idle_time_between_reads_in_millis: 500
    ]
  end
end
