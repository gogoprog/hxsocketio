package js.node.socketio;

extern class Socket
{
    public var rooms:Array<String>;
    public var id:String;

    public function emit(name:String, ?data:Dynamic):Void;
    public function join(name:String, ?callback:Dynamic):Socket;
    public function leave(name:String, ?callback:Dynamic):Socket;
    public function to(room:String):Socket;

    @:overload(function (event:String, ?func:Void->Void):Void{})
    @:overload(function (event:String, ?func:Dynamic->Dynamic->Void):Void{})
    public function on(event:String, ?func:Dynamic->Void):Void;
}

extern class Namespace extends Socket
{
    public function use(?func:Socket->Dynamic->Void):Void;
}

@:native("require('socket.io')")
extern class Server extends Namespace
{
    public function new(?a:Dynamic, ?b:Dynamic);
    public function serverClient(v:Bool):Server;
    public function path(v:String):Server;
    public function adapter(v:Dynamic):Server;
    public function origins(v:String):Server;
    public function attach(srv_or_port:Dynamic, ?opts:Dynamic):Server;
    public function listen(srv_or_port:Dynamic, ?opts:Dynamic):Server;
    public function of(namespace:String):Namespace;

    public function close():Void;


}
