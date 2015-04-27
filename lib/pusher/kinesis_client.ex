defmodule Pusher.KinesisClient do
  @config [
    stream_name: System.get_env("EVENT_QUEUE_TOPIC"),
    executable_name: "./lib/event_consumer.sh",
    application_name: "pusher",
    max_records: 5,
    idle_time_between_reads_in_millis: 500
  ]

  def run do
    Kcl.Executor.run @config
  end
end
