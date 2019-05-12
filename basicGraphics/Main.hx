class Main extends hxd.App {
    override function init() {
        var customGraphics = new h2d.Graphics(s2d);

        customGraphics.beginFill(0xEA8220);
        customGraphics.drawRect(10, 10, 300, 200);
        customGraphics.endFill();
    }

    override function update(dt:Float) {

    }

    static function main() {
        new Main();
    }
}
