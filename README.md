## Neovim Setting
Modify `init.lua`

## NvChad  Setting
Modify `chadrc.lua`

## Plugin Management
Plugin system is built with [lazy.nvim](https://github.com/folke/lazy.nvim).
Add plugins by modifying `plugins.lua`.  
Launch lazy.nvim panel with command `:Lazy`.

## Add Program Language Support
### Language Parsers
Built with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).  
There are two methods to add a parser for specific language:
1. using built-in command `:TSInstall <language_to_install>`  
2. modify `M.treesitter` in `configs/overrides.lua`, and run `TSInstall <package_to_install>`  

Treesitter usage:   
* `:TSUpdate {language}/all` to update Parsers  
* `:TSInstallInfo` to check installation information for different languages  
* `TSUninstall <package_to_uninstall>` to remove an installed package  

### LSP, Linter and Formatter Management
[Mason](https://github.com/williamboman/mason.nvim) is used to management language support packages.  
Add new packages by modifying `M.Mason` in `configs/overrides.lua`, then install with `:MasonInstallAll` `:MasonInstall <packages>` command.  
Launch Mason panel by `:Mason` command.  

Mason usage:
* `:Mason` - opens a graphical status window
* `:MasonUpdate` - updates all managed registries
* `:MasonInstall <package> ...` - installs/re-installs the provided packages
* `:MasonUninstall <package> ...` - uninstalls the provided packages
* `:MasonUninstallAll` - uninstalls all packages
* `:MasonLog` - opens the mason.nvim log file in a new tab window

### LSP Configuration
LSP configuration support is built with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).  
Add LSP name to `local server` in `configs/lspconfig.lua` (check [server_configurations](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#clangd) for support for specific LSP).   
### Format & Lint
Format and lint system is built with [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim).  
Trun on a formatter or linter by adding `b.formatting` for formatter and `b.diagnostics` for linter in `local sources` located in `configs/null-ls.lua`.  
Check [BUILTINS](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md) for built-in formatter & linter name in null-ls.nvim, which may differ from package name.  

## Key Mapping
Set custom key mapping by editing `mapping.lua`.  
Check [Mappings](https://nvchad.com/docs/config/mappings) for details.  

## Tips
* For sharing clipboard with system, install `xclip` on Linux with X11.
