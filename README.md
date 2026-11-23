# WindowTab

A per-window Cmd+Tab switcher for macOS. Every window gets its own item, with optional live
window previews.

Requires an Apple Silicon Mac on macOS 15 or later.

## Install

```sh
brew install --cask akhmetissa/tap/windowtab
```

WindowTab is not notarized by Apple, so macOS blocks it the first time it opens:

1. Open WindowTab from Applications and dismiss the warning.
2. Go to **System Settings > Privacy & Security** and click **Open Anyway**.
3. Allow WindowTab under **Accessibility** when asked.

Then hold Cmd and press Tab. Settings are in the menu bar icon.

## Permissions

- **Accessibility** is required, to intercept Cmd+Tab and switch windows.
- **Screen Recording** is only needed if you choose **Show Window Previews**. Previews stay in
  memory and are never written to disk or sent anywhere.

## Update

```sh
brew upgrade --cask windowtab
open -a WindowTab
```

macOS may ask for **Open Anyway** again after an update.

## Uninstall

```sh
brew uninstall --cask windowtab
```
