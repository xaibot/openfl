package flash.events; #if (!display && flash)


import openfl.display.InteractiveObject;
import openfl.utils.ByteArray;


extern class TouchEvent extends Event {
	
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_BEGIN:String;
	#end
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_END:String;
	#end
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_MOVE:String;
	#end
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_OUT:String;
	#end
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_OVER:String;
	#end
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_ROLL_OUT:String;
	#end
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_ROLL_OVER:String;
	#end
	
	public static var TOUCH_BEGIN:String;
	public static var TOUCH_END:String;
	public static var TOUCH_MOVE:String;
	public static var TOUCH_OUT:String;
	public static var TOUCH_OVER:String;
	public static var TOUCH_ROLL_OUT:String;
	public static var TOUCH_ROLL_OVER:String;
	public static var TOUCH_TAP:String;
	
	public var altKey:Bool;
	public var commandKey:Bool;
	public var controlKey:Bool;
	public var ctrlKey:Bool;
	public var delta:Int;
	public var isPrimaryTouchPoint:Bool;
	
	#if flash
	@:noCompletion @:dox(hide) public var isRelatedObjectInaccessible:Bool;
	#end
	
	public var localX:Float;
	public var localY:Float;
	public var pressure:Float;
	public var relatedObject:InteractiveObject;
	public var shiftKey:Bool;
	public var sizeX:Float;
	public var sizeY:Float;
	public var stageX:Float;
	public var stageY:Float;
	public var touchPointID:Int;
	
	public function new (type:String, bubbles:Bool = true, cancelable:Bool = false, touchPointID:Int = 0, isPrimaryTouchPoint:Bool = false, localX:Float = 0, localY:Float = 0, sizeX:Float = 0, sizeY:Float = 0, pressure:Float = 0, relatedObject:InteractiveObject = null, ctrlKey:Bool = false, altKey:Bool = false, shiftKey:Bool = false, commandKey:Bool = false, controlKey:Bool = false, timestamp:Float = 0, touchIntent:String = null, samples:ByteArray = null, isTouchPointCanceled:Bool = false);
	public function updateAfterEvent ():Void;
	
	
}


#else
typedef TouchEvent = openfl.events.TouchEvent;
#end