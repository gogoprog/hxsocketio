import js.node.socketio.*;

class ServerTest
{
    static public function main()
    {
        var server = new Server();

        server.listen(8000);

        trace("Server is listening on port 8000");

        var n = 0;

        server.on(
            'connection',
            function(socket:Socket)
            {
                trace("A client is connected.");

                socket.emit('message', { content: 'Hello World!' });

                socket.on('message',
                    function (data)
                    {
                        trace(data);
                        socket.emit('message', { content: 'Ping' + n });
                        n++;
                    });
            }
        );
    }
}
