# Sync cursor-plugins into ~/.cursor/plugins/local
# (copy — Cursor skips symlinks that point outside plugins/local).
$ErrorActionPreference = 'Stop'
$src = $PSScriptRoot
$dstRoot = Join-Path $env:USERPROFILE '.cursor\plugins\local'
New-Item -ItemType Directory -Force -Path $dstRoot | Out-Null
Get-ChildItem $src -Directory |
  Where-Object { Test-Path (Join-Path $_.FullName '.cursor-plugin\plugin.json') } |
  ForEach-Object {
    $dst = Join-Path $dstRoot $_.Name
    if (Test-Path $dst) {
      Remove-Item $dst -Recurse -Force
    }
    Copy-Item $_.FullName $dst -Recurse -Force
    Write-Host "Installed $($_.Name) -> $dst"
  }
Write-Host 'Reload Window (Developer: Reload Window). Auth: User env WORKBENCH_MCP_TOKEN.'
Write-Host 'Keep only non-plugin servers in ~/.cursor/mcp.json to avoid duplicates.'
