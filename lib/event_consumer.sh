#!/bin/bash

elixir --name client@127.0.0.1 -S mix run -e "Kcl.KCLProcess.run Pusher.EventConsumer"
