#!/bin/bash
# Generate index.html files for PackWiz source directories

SITE_DIR="${1:-.}"

for dir in mods resourcepacks shaderpacks; do
  target="$SITE_DIR/$dir"
  [ -d "$target" ] || continue

  cat > "$target/index.html" << HEADER
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>$dir</title>
  <style>
    body {
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
      max-width: 600px;
      margin: 50px auto;
      padding: 20px;
      background: #1a1a2e;
      color: #eee;
    }
    h1 { color: #4ade80; }
    a { color: #4ade80; }
    ul { list-style: none; padding: 0; }
    li { margin: 8px 0; }
    .back { margin-top: 30px; color: #888; }
  </style>
</head>
<body>
  <h1>$dir/</h1>
  <ul>
HEADER

  for f in "$target"/*.pw.toml; do
    [ -f "$f" ] || continue
    name=$(basename "$f")
    echo "    <li><a href=\"$name\">$name</a></li>" >> "$target/index.html"
  done

  cat >> "$target/index.html" << 'FOOTER'
  </ul>
  <p class="back"><a href="../">← Back to Bry Pack</a></p>
</body>
</html>
FOOTER
done
