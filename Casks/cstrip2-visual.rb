cask "cstrip2-visual" do
  version "0.1.0"
  sha256 "68bf18005c395b8177d90ea2a5251d4aee7be3276c23eb03722455d784eabd2a"
  url "https://github.com/halverto78/CStrip2-Visual/releases/download/v0.1.0/CStrip2_Visual_macOS_Universal_v0.1.0.zip"
  name "CStrip2-Visual"
  desc "Free audio plugin"
  homepage "https://github.com/halverto78/CStrip2-Visual"
  depends_on :macos
  artifact "CStrip2.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/CStrip2.clap"
  artifact "CStrip2.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/CStrip2.component"
  artifact "CStrip2.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/CStrip2.vst3"
end
