package sf.gml;

/**
 * ...
 * @author YellowAfterlife
 */
typedef SfYyExtension = {> SfYyExtNode,
	var name:String;
	var version:String;
	var productID:String;
	var files:Array<SfYyExtFile>;
}

typedef SfYyExtFile = {> SfYyExtNode,
	var constants:Array<SfYyExtMacro>;
	var functions:Array<SfYyExtFunc>;
	var init:String;
	//var final:String;
	var filename:String;
	var order:Array<SfYyGUID>;
}

typedef SfYyExtMacro = {> SfYyExtNode,
	var constantName:String;
	var hidden:Bool;
	var value:String;
}

typedef SfYyExtFunc = {> SfYyExtNode,
	var name:String;
	var externalName:String;
	var help:String;
	var hidden:Bool;
	var argCount:Int;
	var returnType:Int;
	var args:Array<Int>;
	var kind:Int;
}

typedef SfYyExtNode = {
	var id:SfYyGUID;
	var modelName:String;
	var mvc:String;
}

abstract SfYyGUID(String) {
	static function create() {
		var result = "";
		for (j in 0 ... 32) {
			if (j == 8 || j == 12 || j == 16 || j == 20) {
				result += "-";
			}
			result += "0123456789ABCDEF".charAt(Math.floor(Math.random() * 16));
		}
		return result;
	}
	public inline function new() {
		this = create();
	}
}
