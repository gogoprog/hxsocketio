import js.node.socketio.*;

class ServerTest
{
    static public function main()
    {
        var server = new Server();

        server.listen(8000);

        server.on(
            'connection',
            function(socket)
            {
                trace("Client connected!");
            }
        );
    }
}
