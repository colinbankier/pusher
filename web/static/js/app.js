import {Socket} from "phoenix"

$(function(){
  console.log('loaded');
  let socket = new Socket("/ws");
  console.log(socket);
  socket.connect();
  socket.join("stream", {}).receive("ok", channel => {
    console.log('joined');
    channel.on("event", message => {
      console.log(event);
    });
  });
});

let App = {
}

export default App
