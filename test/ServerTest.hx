import js.node.socketio.*;
import js.node.socketio.Server;

class ServerTest
{
    static public function main()
    {
        var server = new Server();

        server.listen(8000);

        server.on(
            'connection',
            function(socket:Socket)
            {
                trace("A client is connected.");
                socket.emit('news', { hello: 'world' });
                socket.on('my other event', function (data) {
                    trace(data);
                });
            }
        );
    }
}
