package openfl.events;


class TextEvent extends Event {
	
	
	public static var LINK = "link";
	public static var TEXT_INPUT = "textInput";
	
	public var text:String;
	
	
	public function new (type:String, bubbles:Bool = false, cancelable:Bool = false, text:String = "") {
		
		super (type, bubbles, cancelable);
		
		this.text = text;
		
	}
	
	
	public override function clone ():Event {
		
		var event = new TextEvent (type, bubbles, cancelable, text);
		event.target = target;
		event.currentTarget = currentTarget;
		#if !openfl_legacy
		event.eventPhase = eventPhase;
		#end
		return event;
		
	}
	
	
	public override function toString ():String {
		
		return __formatToString ("TextEvent",  [ "type", "bubbles", "cancelable", "text" ]);
		
	}
	
	
}