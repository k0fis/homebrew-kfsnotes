cask "kfsnotes" do
  version "1.0"
  sha256 "sha256:59c1d8c5348ae6fa65a6f401f4b9a5522a6b5bda5a4526d0c80c2fa920fdba08"

  url "https://github.com/k0fis/kfsNotes-osx/releases/download/release_1.0/kfsNotes_2025-12-29_12-24-00.zip"
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
