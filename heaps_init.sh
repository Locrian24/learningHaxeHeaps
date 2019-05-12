#!/bin/bash

mkdir -p "$1" && cd $_
touch ./index.html
touch ./Main.hx
touch ./compile.hxml

cat > ./index.html << EOL
<!DOCTYPE>
<html>
    <head>
        <meta charset="utf-8" />
        <title>${1}</title>
        <style>
            body { margin: 0; padding: 0; }
            canvas#webgl { width: 100%; height: 100%; }
        </style>
    </head>
    <body>
        <canvas id="webgl"></canvas>
        <script type="text/javascript" src="${1}.js"></script>
    </body>
</html>
EOL

cat > ./Main.hx << EOL
class Main extends hxd.App {
    override function init() {

    }

    override function update(dt:Float) {

    }

    static function main() {
        new Main();
    }
}
EOL

cat > ./compile.hxml << EOL
-lib heaps
-js ${1}.js
-main Main
-debug
EOL

code ./
