import js.node.socketio.*;

class ClientTest
{
    static public function main()
    {
        var client = new Client("http://localhost:8000/");

        client.on('message',
            function (data)
            {
                trace(data);
                haxe.Timer.delay(
                    function()
                    {
                        client.emit('message', { content: 'Message from client.' });
                    },
                    1000
                    );
            });
    }
}
