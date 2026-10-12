cask "ondinha-split-eq" do
  version "1.1.0"
  sha256 "b16adb39331f94e52939e8762cb02978cee631ac60556d44e5ad5e96f6eabc3e"
  url "https://github.com/ondinha/ondinha-split-eq/releases/download/v1.1.0/Ondinha-Split-EQ-1.1.0-macOS.zip"
  name "ondinha-split-eq"
  desc "Free audio plugin"
  homepage "https://github.com/ondinha/ondinha-split-eq"
  depends_on :macos
  artifact "Ondinha-Split-EQ-1.1.0-macOS/Ondinha Split EQ.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Ondinha Split EQ.component"
  artifact "Ondinha-Split-EQ-1.1.0-macOS/Ondinha Split EQ.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Ondinha Split EQ.vst3"
end
