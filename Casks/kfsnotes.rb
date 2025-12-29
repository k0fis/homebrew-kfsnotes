cask "kfsnotes" do
  version "1.5.9"
  sha256 "eada9a571784ac95ddbc83ab253ceef2f8e1c4d57be0bc52064e92ef46c1c7d4"

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
