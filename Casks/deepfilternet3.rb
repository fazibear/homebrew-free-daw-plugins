cask "deepfilternet3" do
  version "0.7.0"
  sha256 "0589d9e42dd6532c45adfe6d519ec36229a80c1315f40aa847ea4b37958969a4"
  url "https://github.com/Shuichi346/DeepFilterNet3-VST3/releases/download/v0.7.0/DeepFilterNR-v0.7.0-macos-arm64.zip"
  name "DeepFilterNet3"
  desc "Free audio plugin"
  homepage "https://github.com/Shuichi346/DeepFilterNet3-VST3"
  depends_on :macos
  artifact "DeepFilterNR-v0.7.0-macos-arm64/Plugins/deepfilter-vst.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/deepfilter-vst.clap"
  artifact "DeepFilterNR-v0.7.0-macos-arm64/Plugins/deepfilter-vst.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/deepfilter-vst.vst3"
end
