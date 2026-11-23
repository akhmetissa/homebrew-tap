cask "windowtab" do
  version "1.0.1"
  sha256 "909e7eae820eb03f7eb8626410e532657770bf15fff4b15eba652a16bbceb4f5"

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
