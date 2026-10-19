cask "bat-transpose" do
  version "0.2.0"
  sha256 "22e22f7c5916d925c3bcb85260c42b09b8d3e13e376966314ea0b273f8320459"
  url "https://github.com/Yusufmolla/BAT-Transpose/releases/download/v0.2.0/BAT-transpose-0.2.0-macos-universal.zip"
  name "BAT-Transpose"
  desc "Free audio plugin"
  homepage "https://github.com/Yusufmolla/BAT-Transpose"
  depends_on :macos
  artifact "BAT-transpose.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/BAT-transpose.vst3"
end
