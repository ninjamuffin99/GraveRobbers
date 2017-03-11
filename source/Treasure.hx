package;

import flixel.FlxSprite;
import flixel.FlxG;

class Treasure extends FlxSprite
{
	//Embed(source="data/treasure.png")] protected var ImgTreasure:Class;
	
	public function Treasure()
	{
		super(Robber.goal.x - 32,Robber.goal.y + 16 - 59);
		loadGraphic(ImgTreasure,true,false,64,59);
		frame = 0;
	}
	
	override public function hurt(Damage:Float):Void
	{
		if(frame == 4)
		{
			exists = false;
			(FlxG.state = PlayState).gameOver();
		}
		frame = frame + Damage;
	}
}