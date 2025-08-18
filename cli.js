#!/usr/bin/env node

const { spawn } = require('child_process');
const path = require('path');

// Get command line arguments
const args = process.argv.slice(2);
const command = args[0] || 'install';

// Script paths
const installScript = path.join(__dirname, 'install.sh');
const uninstallScript = path.join(__dirname, 'uninstall.sh');

function showHelp() {
  console.log('🏗️  Icon Agents - CLI Tool');
  console.log('');
  console.log('Usage:');
  console.log('  npx icon-agents [command]');
  console.log('');
  console.log('Commands:');
  console.log('  install     Install Icon Agents (default)');
  console.log('  uninstall   Remove Icon Agents');
  console.log('  help        Show this help message');
  console.log('');
  console.log('Examples:');
  console.log('  npx icon-agents              # Install Icon Agents');
  console.log('  npx icon-agents install      # Install Icon Agents');
  console.log('  npx icon-agents uninstall    # Remove Icon Agents');
}

function runScript(scriptPath, scriptName) {
  console.log(`🏗️  Icon Agents - ${scriptName}`);
  console.log(`Launching interactive ${scriptName.toLowerCase()}...\n`);

  const process = spawn('bash', [scriptPath], {
    stdio: 'inherit',
    cwd: __dirname
  });

  process.on('close', (code) => {
    if (code === 0) {
      console.log(`\n✅ ${scriptName} completed via NPX!`);
    } else {
      console.log(`\n❌ ${scriptName} failed with code ${code}`);
      process.exit(code);
    }
  });

  process.on('error', (error) => {
    console.error(`❌ Failed to run ${scriptName.toLowerCase()}:`, error.message);
    console.log('\n💡 Try the direct approach:');
    const url = scriptName === 'Installer' 
      ? 'https://raw.githubusercontent.com/Commands-com/icon-agents/refs/heads/main/install.sh'
      : 'https://raw.githubusercontent.com/Commands-com/icon-agents/refs/heads/main/uninstall.sh';
    console.log(`curl -fsSL ${url} | bash`);
    process.exit(1);
  });
}

// Handle commands
switch (command) {
  case 'install':
    runScript(installScript, 'Installer');
    break;
  
  case 'uninstall':
    runScript(uninstallScript, 'Uninstaller');
    break;
  
  case 'help':
  case '--help':
  case '-h':
    showHelp();
    break;
  
  default:
    console.log(`❌ Unknown command: ${command}`);
    console.log('');
    showHelp();
    process.exit(1);
}