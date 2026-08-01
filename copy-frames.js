const fs = require('fs');
const path = require('path');

const srcDir = 'c:/Users/Dell/Downloads/mixtail scroll';
const destDir = 'c:/Users/Dell/Downloads/Mixtail Design/frames';

if (!fs.existsSync(destDir)) {
  fs.mkdirSync(destDir, { recursive: true });
}

let copied = 0;
for (let i = 1; i <= 300; i++) {
  const pad = String(i).padStart(3, '0');
  const src = path.join(srcDir, 'ezgif-frame-' + pad + '.jpg');
  const dest = path.join(destDir, 'frame_' + pad + '.jpg');
  if (fs.existsSync(src)) {
    fs.copyFileSync(src, dest);
    copied++;
  }
}
console.log('Successfully copied ' + copied + ' frames to ' + destDir);
