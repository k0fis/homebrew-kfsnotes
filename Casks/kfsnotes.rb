cask "kfsnotes" do
  version "1.6.4"
  sha256 "37ff25b3b77d565154f25b02128064ab1886153cf234bad21fc4ef680cee6937"

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
