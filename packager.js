const fs = require('fs');
const path = require('path');
const archiver = require('archiver');

function createZip(outputPath, folders, callback) {
  const output = fs.createWriteStream(outputPath);
  const archive = archiver('zip', {
    zlib: { level: 9 }
  });

  output.on('close', () => {
    console.log(`${archive.pointer()} total bytes`);
    console.log('Archiving done.');
    if (callback) callback();
  });

  archive.on('error', (err) => {
    throw err;
  });

  archive.pipe(output);

  folders.forEach(folder => {
    archive.directory(folder.path, folder.name);
  });

  archive.finalize();
}


const resourcePackPath = path.join(__dirname, '_resource_pack');
const behaviorPackPath = path.join(__dirname, '_behavior_pack');

createZip(
  path.join(__dirname, 'KeyKepper.mcaddon'),
  [
    { path: resourcePackPath, name: 'resource_pack' },
    { path: behaviorPackPath, name: 'behavior_pack' }
  ]
);
