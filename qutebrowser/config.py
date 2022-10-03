# Load config from this file
config.load_autoconfig(False)

### General
# Warn user of quitting when there are downloads or multiple tabs open
c.confirm_quit = ["downloads", "multiple-tabs"]

### Content
# Validate SSL handshakes
#c.content.ssl_strict = True
c.content.user_stylesheets = "custom.css"

#### Fonts
c.fonts.debug_console = "Monofur Nerd Font"
#c.fonts.default_family = "Monofur Nerd Font"
c.fonts.default_size = "14pt"

#### URL
# Set the home page
c.url.start_pages = "https://google.com"

# Set the default search engine
c.url.searchengines = { "DEFAULT": 'https://www.google.com/search?q={}' }

#### Downloads
# Use ~/Downloads as the default directory
c.downloads.location.directory="$HOME/Downloads"

# Ask where to download files to
c.downloads.location.prompt = True

#### Editor
# The command to use for open-editor
c.editor.command = ["kitty", "-e", "nvim '{}'"]

#### Scrolling
# Show scrollbar
c.scrolling.bar = "always"

# Use smooth scrolling
c.scrolling.smooth = True

#### Tabs
# Open new tabs in the background
c.tabs.background = True

# When the last tab is closed, close the window
c.tabs.last_close = "close"

# Disable active tab indicator
c.tabs.indicator.width = 0

# Disable mousehheel tab switching
c.tabs.mousewheel_switching = False
