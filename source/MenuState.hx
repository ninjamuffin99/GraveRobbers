package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;

class MenuState extends FlxState 
{
	override public function create():Void
	{
		var t:FlxText;
		t = new FlxText(0, FlxG.height/2-10, FlxG.width, "GraveRobbers");
		t.size = 16;
		t.alignment = "center";
		add(t);
		t = new FlxText(FlxG.width/2-50,FlxG.height-20,100,"click to play");
		t.alignment = "center";
		add(t);
		
		FlxG.mouse.visible = true;
	}

	override public function update(elapsed:Float):Void
    {
        super.update(elapsed);
		
		if(FlxG.mouse.justPressed)
		{
			FlxG.mouse.visible = false;
			FlxG.switchState(new PlayState());
		}
	}
	
}