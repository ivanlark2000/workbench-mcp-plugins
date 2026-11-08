# Workbench Cursor plugins (per-MCP icons)

Each subdirectory is a Cursor plugin with its own `assets/logo.svg` and one MCP server.

## Install (icons visible)

Local `~/.cursor/plugins/local` **does not render** logos
([plugin-template#7](https://github.com/cursor/plugin-template/issues/7)).
Install from GitHub marketplace instead:

```text
/add-plugin https://github.com/ivanlark2000/workbench-mcp
```

Or Dashboard → Plugins → Team Marketplaces → Import from Repo.

Then install each plugin (or required ones) and Reload Window.

Auth uses `${env:WORKBENCH_MCP_TOKEN}` (User env). Keep only non-plugin servers in
`~/.cursor/mcp.json` (engram / doppler / docs).

## Dev copy (no logos)

```powershell
./cursor-plugins/Install-LocalPlugins.ps1
```

## Layout

See `.cursor-plugin/marketplace.json` for the full list.
