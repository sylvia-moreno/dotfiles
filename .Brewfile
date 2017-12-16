# Install command-line tools using Homebrew.

# Support bundle
tap 'Homebrew/bundle'

# Support mac app store
brew 'mas'

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew 'coreutils'
# Install some other useful utilities like `sponge`.
brew 'moreutils'
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew 'findutils'
# Install GNU `sed`, overwriting the built-in `sed`.
brew 'gnu-sed', args: ['with-default-names']
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew 'bash'
tap 'homebrew/versions'
brew 'bash-completion2'

# Install `wget` with IRI support.
brew 'wget', args: ['with-iri']

# Install more recent versions of some macOS tools.
brew 'neovim'
tap 'homebrew/dupes'
brew 'grep'
brew 'openssh'
brew 'screen'

# Install font tools.
tap 'bramstein/webfonttools'
brew 'sfnt2woff'
brew 'sfnt2woff-zopfli'
brew 'woff2'

# Required Engine
brew 'node'
brew 'python3'
brew 'ruby'

# Supercharge Git
brew 'git'
brew 'git-flow'
brew 'git-lfs'
brew 'hub'

# Install other useful binaries.
brew 'ack'
brew 'ccat'
brew 'googler' # Google search client
brew 'gpg'
brew 'htop'
brew 'httpie' # Http client
brew 'lftp' # Ftp client
brew 'lynx' # Text browser
brew 'm-cli' # MacOS utilities
brew 'p7zip' # Zip manager
brew 'pv' # PipeViewer: monitor data
brew 'rename'
brew 'speedtest_cli' # Test bandwidth
brew 'ssh-copy-id'
brew 'testssl'
brew 'tmux'
brew 'transmission' # BitTorrent client
brew 'trash'
brew 'tree'
brew 'webkit2png'
brew 'yarn', args: ['without-node']
brew 'kryptco/tap/kr' # Kryptonite ssh

#  Default install directory for cask apps
cask_args appdir: '/Applications'

# utilities
cask '1password'
cask 'transmission'
cask 'adobe-acrobat-reader'
cask 'iterm2'

# google apps
cask 'google-chrome'
cask 'google-backup-and-sync'
cask 'google-hangouts'

# development
mas 'Xcode', id: 497799835
cask 'docker'
cask 'visual-studio-code' #switch to vim
cask 'tower' #switch to command line git/hub

# design
cask 'sketch'
mas 'Affinity Designer', id: 824171161
mas 'Affinity Photo', id: 824183456

# multimedia
cask 'spotify'
cask 'vlc'

# social
#cask 'skype'
#cask 'slack'
