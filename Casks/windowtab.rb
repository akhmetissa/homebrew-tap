cask "windowtab" do
  version "1.0.3"
  sha256 "5942e64ab6d482390d0554a83337b7099decfd340097912e331bfbcf9159686e"

  url "https://github.com/akhmetissa/homebrew-tap/releases/download/v#{version}/WindowTab-#{version}.zip"
  name "WindowTab"
  desc "Per-window Cmd+Tab switcher with window previews"
  homepage "https://github.com/akhmetissa/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "WindowTab.app"

  uninstall quit: "com.akhmet.windowtab"

  zap trash: "~/Library/Preferences/com.akhmet.windowtab.plist"

  caveats <<~EOS
    WindowTab is not notarized by Apple, so macOS blocks it the first time it opens:
      1. Open WindowTab from Applications and dismiss the warning.
      2. Go to System Settings > Privacy & Security and click Open Anyway.
      3. Allow WindowTab under Accessibility when asked.

    macOS may ask for Open Anyway again after an update.
    After upgrading, reopen it with: open -a WindowTab
  EOS
end
