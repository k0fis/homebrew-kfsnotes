cask "kfsnotes" do
  version "1.7.2"
  sha256 "2168e45e8bf396a845e404f01b47424d2a800e6c96f82b5aa8130978559ffb6a"

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
