################################################################################
# PATHS

# Dotfiles bin
set PATH (dirname (status -f))"/../bin" $PATH
set PATH $HOME/local/bin $PATH

# Homebrew bin
set PATH /usr/local/sbin $PATH
set PATH /usr/local/bin $PATH

# Haskell bin
if test -d $HOME/.cabal/bin
  set PATH $HOME/.cabal/bin $PATH
end

# Rbenv bin
if test -d $HOME/.rbenv
  set PATH $HOME/.rbenv/bin $PATH
  set PATH $HOME/.rbenv/shims $PATH
  set PATH ./bin $PATH
end

# Nimrod bin
if test -d $HOME/local/nimrod
  set PATH $HOME/local/nimrod/bin $PATH
end

# Babel bin
if test -d $HOME/.babel/bin
  set PATH $HOME/.babel/bin $PATH
end

################################################################################
# Environment variables

# Use vim as the default editor
if type vim 1>/dev/null
  set -x EDITOR 'vim'
end

# Ruby optimizations
if type ruby > /dev/null
  set -x RUBY_HEAP_MIN_SLOTS 800000
  set -x RUBY_HEAP_FREE_MIN 100000
  set -x RUBY_HEAP_SLOTS_INCREMENT 300000
  set -x RUBY_HEAP_SLOTS_GROWTH_FACTOR 1
  set -x RUBY_GC_MALLOC_LIMIT 79000000
end

# Scala sbt opts
set -x SBT_OPTS "-Xms512M -Xmx2G -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

################################################################################
# Aliases

alias z "zeus"
alias b "bundle exec"

