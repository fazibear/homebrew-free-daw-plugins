cask "soothexx" do
  version "0.1.0"
  sha256 "a03536236de9c11ad296df6f35331b87a5fad9e7b437aa03bd2c6c62c42fd557"
  url "https://github.com/VexxPlugins/soothexx/releases/download/v0.1.0/soothexx-0.1.0-macOS.zip"
  name "soothexx"
  desc "Free audio plugin"
  homepage "https://github.com/VexxPlugins/soothexx"
  depends_on :macos
  artifact "soothexx-0.1.0-macOS/soothexx.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/soothexx.component"
  artifact "soothexx-0.1.0-macOS/soothexx.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/soothexx.vst3"
end
