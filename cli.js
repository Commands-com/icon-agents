#!/usr/bin/env node

const { spawn } = require('child_process');
const path = require('path');

// Simple wrapper around install.sh for npx convenience
const installScript = path.join(__dirname, 'install.sh');

console.log('🏗️  Icon Agents - NPX Installer');
console.log('Launching interactive installer...\n');

// Run install.sh interactively
const installProcess = spawn('bash', [installScript], {
  stdio: 'inherit',
  cwd: __dirname
});

installProcess.on('close', (code) => {
  if (code === 0) {
    console.log('\n✅ Installation completed via NPX!');
  } else {
    console.log(`\n❌ Installation failed with code ${code}`);
    process.exit(code);
  }
});

installProcess.on('error', (error) => {
  console.error('❌ Failed to run installer:', error.message);
  console.log('\n💡 Try the direct approach:');
  console.log('curl -fsSL https://raw.githubusercontent.com/Commands-com/icon-agents/refs/heads/main/install.sh | bash');
  process.exit(1);
});