package js.node.socketio;

extern class Namespace extends Socket
{
    public function use(?func:Socket->Dynamic->Void):Void;
}

@:native("require('socket.io')")
extern class Server extends Namespace
{
    public var sockets:Namespace;
    public function new(?a:Dynamic, ?b:Dynamic);
    public function serveClient(v:Bool):Server;
    public function path(v:String):Server;
    public function adapter(v:Dynamic):Server;
    public function origins(v:String):Server;
    public function attach(srv_or_port:Dynamic, ?opts:Dynamic):Server;
    public function listen(srv_or_port:Dynamic, ?opts:Dynamic):Server;
    public function of(namespace:String):Namespace;
    public function close():Void;
}
