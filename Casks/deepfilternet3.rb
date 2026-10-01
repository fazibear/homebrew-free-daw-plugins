cask "deepfilternet3" do
  version "0.7.0"
  sha256 "0589d9e42dd6532c45adfe6d519ec36229a80c1315f40aa847ea4b37958969a4"
  url "https://github.com/Shuichi346/DeepFilterNet3-VST3/releases/download/v0.7.0/DeepFilterNR-v0.7.0-macos-arm64.zip"
  name "DeepFilterNet3"
  desc "Free audio plugin"
  homepage "https://github.com/Shuichi346/DeepFilterNet3-VST3"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP"
    move "DeepFilterNR-v0.7.0-macos-arm64/Plugins/deepfilter-vst.clap", "{{user}}/Library/Audio/Plug-Ins/CLAP/deepfilter-vst.clap"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP/deepfilter-vst.vst3/Contents/_CodeSignature"
    copy "DeepFilterNR-v0.7.0-macos-arm64/Plugins/deepfilter-vst.vst3/Contents/_CodeSignature/CodeResources", "{{user}}/Library/Audio/Plug-Ins/CLAP/deepfilter-vst.vst3/Contents/_CodeSignature/CodeResources"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP/deepfilter-vst.vst3/Contents/MacOS"
    copy "DeepFilterNR-v0.7.0-macos-arm64/Plugins/deepfilter-vst.vst3/Contents/MacOS/deepfilter-vst", "{{user}}/Library/Audio/Plug-Ins/CLAP/deepfilter-vst.vst3/Contents/MacOS/deepfilter-vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP/deepfilter-vst.vst3/Contents"
    copy "DeepFilterNR-v0.7.0-macos-arm64/Plugins/deepfilter-vst.vst3/Contents/Info.plist", "{{user}}/Library/Audio/Plug-Ins/CLAP/deepfilter-vst.vst3/Contents/Info.plist"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP/deepfilter-vst.vst3/Contents"
    copy "DeepFilterNR-v0.7.0-macos-arm64/Plugins/deepfilter-vst.vst3/Contents/PkgInfo", "{{user}}/Library/Audio/Plug-Ins/CLAP/deepfilter-vst.vst3/Contents/PkgInfo"
  end
end
