package js.node.socketio;

extern class Socket
{
    public function emit(name:String, ?data:Dynamic):Void;

    @:overload(function (event:String, ?func:Void->Void):Void{})
    @:overload(function (event:String, ?func:Dynamic->Dynamic->Void):Void{})
    public function on(event:String, ?func:Dynamic->Void):Void;
}

@:native("require('socket.io')")
extern class Server
{
    public function new(?a:Dynamic, ?b:Dynamic);
    public function serverClient(v:Bool):Server;
    public function path(v:String):Server;
    public function adapter(v:Dynamic):Server;
    public function origins(v:String):Server;
    public function attach(srv_or_port:Dynamic, ?opts:Dynamic):Server;
    public function listen(srv_or_port:Dynamic, ?opts:Dynamic):Server;
    public function emit(name:String, ?data:Dynamic):Void;

    @:overload(function (event:String, ?func:Void->Void):Void{})
    @:overload(function (event:String, ?func:Dynamic->Dynamic->Void):Void{})
    public function on(event:String, ?func:Dynamic->Void):Void;
}
