cask "audiomatrixhub" do
  version "2.0.0"
  sha256 "a957b020676acee7399e0dda0ff764ed6b5f503c90972e9cd1029adb2c3a8751"
  url "https://github.com/Joooooooooshua/AudioMatrixHub/releases/download/v2.0.0/AudioMatrixHub-v2.0.0-macOS-arm64.zip"
  name "AudioMatrixHub"
  desc "Free audio plugin"
  homepage "https://github.com/Joooooooooshua/AudioMatrixHub"
  depends_on :macos
  app "AudioMatrixHub.app"
end
