cask "audiomatrixhub" do
  version "2.0.0"
  sha256 "5c3fc0c88348f646428c4ec6eec631c55a9b8daff7a59a595e7f05ae6141e582"
  url "https://github.com/Joooooooooshua/AudioMatrixHub/releases/download/v2.0.0/AudioMatrixHub-v2.0.0-macOS-arm64.zip"
  name "AudioMatrixHub"
  desc "Free audio plugin"
  homepage "https://github.com/Joooooooooshua/AudioMatrixHub"
  depends_on :macos
  app "AudioMatrixHub.app"
end
