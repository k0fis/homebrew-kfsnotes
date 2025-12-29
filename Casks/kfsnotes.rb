cask "kfsnotes" do
  version "1.1.3"
  sha256 "f98051204e94324febfe221889ca12831cb4f1caaf9578630f6ad86be1560e0c"

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
