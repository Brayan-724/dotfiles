if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/fishrc.fish
source ~/.config/fish/git-aliases.fish

starship init fish | source
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# pnpm
set -gx PNPM_HOME "/home/apika/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  fish_add_path "$PNPM_HOME"
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Densky
set --export DENSKY_INSTALL /home/apika/.densky
fish_add_path $DENSKY_INSTALL/bin
