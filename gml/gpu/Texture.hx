package gml.gpu;

/**
 * ...
 * @author YellowAfterlife
 */
@:std @:native("texture") @:snakeCase
extern class Texture {
	static inline var defValue:Texture = cast -1;
	//
	
	//
	var width(get, never):Int;
	private function get_width():Int;
	var height(get, never):Int;
	private function get_height():Int;
	//
	@:native("set_repeat") static function setRepeat(enable:Bool):Void;
	@:native("set_interpolation") static function setInterpolation(enable:Bool):Void;
}
