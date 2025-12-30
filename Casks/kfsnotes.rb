cask "kfsnotes" do
  version "1.7"
  sha256 "71d88dce1d3a776a0e898503dfdd02674eab164a3eceb70f20ec82731f7e5cb9"

  url "https://github.com/k0fis/kfsNotes-osx/releases/download/v#{version}/kfsNotes.app.zip"
  name "kfsNotes"
  desc "Personal knowledge and notes app for macOS"
  homepage "https://github.com/k0fis/kfsNotes-osx"

  depends_on macos: ">= :ventura"

  app "kfsNotes.app"

  zap trash: [
    "~/Library/Application Support/kfsNotes",
    "~/Library/Preferences/com.k0fis.kfsNotes.plist",
    "~/Library/Saved Application State/com.k0fis.kfsNotes.savedState",
  ]
end
