const { execSync } = require('child_process');
const git = 'C:/Users/Dell/git-mini/cmd/cmd/git.exe';
const cwd = { cwd: 'C:/Users/Dell/Downloads/Mixtail Design' };

try {
  console.log('Unstaging all files to origin/main...');
  execSync(`"${git}" reset origin/main`, cwd);

  for (let batch = 0; batch < 10; batch++) {
    const start = batch * 30 + 1;
    const end = (batch + 1) * 30;
    console.log(`Staging and pushing batch ${batch + 1}/10 (frames ${start}-${end})...`);
    let files = [];
    for (let i = start; i <= end; i++) {
      const num = String(i).padStart(3, '0');
      files.push(`frames/frame_${num}.jpg`);
    }
    execSync(`"${git}" add ${files.join(' ')}`, cwd);
    execSync(`"${git}" commit -m "Add animation frames ${start}-${end}"`, cwd);
    execSync(`"${git}" push origin main`, cwd);
    console.log(`Success: Batch ${batch + 1} (frames ${start}-${end}) pushed to GitHub!`);
  }
  console.log('ALL 300 ANIMATION FRAMES PUSHED TO GITHUB SUCCESSFULLY!');
} catch (e) {
  console.log('Batch push error:', e.message);
}
