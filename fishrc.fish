fish_add_path /home/apika/.local/bin
fish_add_path /home/apika/.dotfiles/bin/

# Zoxide
if type -q zoxide 
  zoxide init fish | source
  alias cd="z"
end

# Turso
source /home/apika/.config/fish/conf.d/turso.fish
source /home/apika/env.fish

# Bat as man highlighter
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# RUST
fish_add_path /home/apika/.cargo/bin
fish_add_path /home/apika/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin
if type -q sccache
  # export RUSTC_WRAPPER=$(which sccache)
end

# NVIM
fish_add_path /home/apika/.local/share/bob/nvim-bin
fish_add_path /home/apika/.local/share/nvim/mason/bin/

# Dart
fish_add_path /home/apika/Downloads/flutter/bin

# VOLTA / NODE
set -xU VOLTA_HOME "$HOME/.volta"
fish_add_path "$VOLTA_HOME/bin"

# DENO
set -xU DENO_INSTALL "$HOME/.deno"
fish_add_path "$DENO_INSTALL/bin"

# More efficient alias
if type -q rg
  alias grep="rg"
end
if type -q exa
  alias ls="exa -lh --icons --no-user -s type"
end
alias la="ls -a"

set -xU HOME_C "/mnt/c/Users/bjqf0/"
alias cd_c="cd /mnt/c/"
alias cd_home="cd $HOME_C"
