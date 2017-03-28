package js.node.socketio;

@:native("(typeof io == 'undefined' ? require('socket.io-client') : io)")
extern class Client extends Socket
{
    @:selfCall
    public function new(?server:String, ?options:ClientOptions);
}

typedef ClientOptions = {
	?query:String
}
