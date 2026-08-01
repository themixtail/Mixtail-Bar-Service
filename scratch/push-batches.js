const { execSync } = require('child_process');
const path = require('path');

const git = 'C:/Users/Dell/git-mini/cmd/cmd/git.exe';
const cwd = { cwd: 'C:/Users/Dell/Downloads/Mixtail Design' };

for (let batch = 0; batch < 6; batch++) {
  const start = batch * 50 + 1;
  const end = (batch + 1) * 50;
  console.log(`Pushing batch ${batch + 1}/6 (frames ${start}-${end})...`);
  let files = [];
  for (let i = start; i <= end; i++) {
    const num = String(i).padStart(3, '0');
    files.push(`frames/frame_${num}.jpg`);
  }
  try {
    execSync(`"${git}" add ${files.join(' ')}`, cwd);
    execSync(`"${git}" commit -m "Add frames batch ${batch + 1}"`, cwd);
    execSync(`"${git}" push origin main`, cwd);
    console.log(`Batch ${batch + 1} pushed successfully!`);
  } catch (e) {
    console.log(`Batch ${batch + 1} note:`, e.message);
  }
}
console.log('All frame batches finished!');
