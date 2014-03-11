package wings.w2d.shapes;

import kha.Painter;
import kha.Color;

class RectShape extends Shape {

	public var shapeW:Float;
	public var shapeH:Float;

	public function new(x:Float, y:Float, w:Float, h:Float, color:Int = 0xffffffff) {
		super(x, y);

		this.w = w;
		this.h = h;
		shapeW = w;
		shapeH = h;
		this.color = color;
	}

	public override function render(painter:Painter) {

		painter.setColor(Color.fromValue(color));
		painter.fillRect(_x, _y, shapeW, shapeH);

		super.render(painter);
	}
}
