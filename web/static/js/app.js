import {Socket} from "phoenix"

$(function(){
  var stream_div = $("#stream");
  console.log('loaded');
  let socket = new Socket("/ws");
  console.log(socket);
  socket.connect();
  socket.join("stream", {}).receive("ok", channel => {
    console.log('joined');
    channel.on("event", message => {
      console.log(message);
      var url = message.payload.properties.url;
      stream_div.prepend('<div>This page <a href="' + url + '">' + url + '</a> was viewed.</div>');
    });
  });
});

let App = {
}

export default App
