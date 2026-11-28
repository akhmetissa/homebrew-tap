cask "windowtab" do
  version "1.0.5"
  sha256 "5ea8ab5892cc511e24d0659183391f68c34cf983f4ea65da70c9b0ca70880d33"

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

    From 1.0.4 on, WindowTab updates itself through Homebrew: it checks at launch and
    once a day, and restarts in about a second. Turn this off with Update Automatically
    in its menu. After upgrading by hand, reopen it with: open -a WindowTab
  EOS
end
