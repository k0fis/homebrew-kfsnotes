cask "kfsnotes" do
  version "1.7.3"
  sha256 "3c390b3308bcbbdadcd02aa000f4f1fb6564929d06c8b19c57325e8a4095e894"

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
