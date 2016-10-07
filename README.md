# dotfiles

A collection of my dotfiles and information/config files to get a new machine up and running.

## OS X

1. Update OS X to latest version
1. Install any security updates, etc.
1. Run `sh osx/set-defaults.sh`
1. Install applications from ["Mac App Store"](#mac-app-store) and ["Download"](#download) lists below

## Applications

### Mac App Store

- 1Password
- Amphetamine
- Android Studio
- ColorSnapper 2
- Day One
- Keynote
- Kindle
- Magnet
- MindNode
- NepTunes
- Numbers
- Pages
- Paprika
- Paw
- Power JSON Editor
- Prepo
- ProCSSor
- Reeder 3
- Screens
- SimpleScrobbler
- Skitch
- Slack
- Things
- Tweetbot
- [Ulysses](#ulysses)
- Wunderlist
- XCode

### Download

- [Alfred 3](#alfred)
- Atom [configuration](#atom)
- Dropbox
- Figma
- Google Chrome
- [Heroku Toolbelt](https://devcenter.heroku.com/articles/heroku-command-line)
- [Hyperterm](https://hyperterm.org) [configuration](#hyperterm)
- Kaleidoscope
- [Kap](https://getkap.co)
- Omnigraffle Professional
- QGIS
- Screenhero
- Sketch 3
- Spotify

### Configure

- Install Homebrew: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- Install Git (`brew install git`), then:
  - `git config --global user.name "Nate Irwin"`
  - `git config --global user.email "nate@irwin.xyz"`
  - `git config --global credential.helper osxkeychain`
- Install Node (`brew install node`), then:
  - `npm install grunt-cli -g`
  - `npm install gulp-cli -g`
  - `npm install http-server -g`
- Install rbenv (`brew install rbenv`), then:
  - Paste `eval "$(rbenv init -)"` into ~/.bash_profile
  - Restart Hyperterm
  - `rbenv install 2.2.2`
  - `rbenv global 2.2.2`
  - `gem install cocoapods`
  - `gem install jekyll`

#### Alfred

Setup sync:

1. Open Alfred preferences
1. Click the "Advanced" tab
1. Click "Set sync folder..." and navigate to, and select, "iCloud > Alfred"

#### Atom

Settings stored in: https://gist.github.com/nateirwin/9f3a5e131294da5abf32ec506631bc4c.

1. Install `sync-settings` plugin
1. In the plugin settings:
   - Add your "Gist" personal access token
   - Add the Gist ID: `9f3a5e131294da5abf32ec506631bc4c`
1. Open the Command Palette and run `sync-settings:restore`

#### Hyperterm

Settings stored in: https://gist.github.com/nateirwin/6dcfdaea92b72539e279c69736ac2ccc.

1. `atom ~/.hyperterm.js`
1. Add `hyperterm-sync-settings` to the plugins array
1. Save the following in `~/.hyperterm_plugins/.hyperterm-sync-settings.json`:
    `{
      "gistId": "6dcfdaea92b72539e279c69736ac2ccc",
      "personalAccessToken": "REPLACE_WITH_PERSONAL_ACCESS_TOKEN"
    }`
1. Restart Hyperterm
1. Select "Plugins > Sync Settings > Restore Settings"
