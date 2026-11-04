cask "junglizer" do
  version "0.9.3-beta.4"
  sha256 "428477cd15bbd7c5aabf2fd044a5ac027774f4f627a1d1bfa7cadf87613fee71"
  url "https://github.com/mrballistic/junglizer/releases/download/v0.9.3-beta.4/Junglizer-macos-arm64-clap.zip"
  name "junglizer"
  desc "Free audio plugin"
  homepage "https://github.com/mrballistic/junglizer"
  depends_on :macos
  artifact "Junglizer.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/Junglizer.clap"
end
