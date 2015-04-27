# Pusher
Consumes an Amazon Kinesis stream and publishes to WebSockets

## Dev
run a server process:
`elixir --name server@127.0.0.1 --cookie abcd -S mix phoenix.server`
run a client process:
`iex --name client@127.0.0.1 --cookie abcd -S mix`

Don't really need cookie if on same machine, uses `~/.erlang.cookie` by default

```
print_node_name = fn -> IO.puts Node.self end
Node.spawn(:"node2@machine2.com", print_node_name)
```


To start your new Phoenix application:

1. Install dependencies with `mix deps.get`
2. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit `localhost:4000` from your browser.
