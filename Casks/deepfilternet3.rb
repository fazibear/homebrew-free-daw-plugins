cask "deepfilternet3" do
  version "0.6.0"
  sha256 "f9f0d97dc7a7c05748b842614bb63f2461b1494595ddc70737841ec4f6d0172f"
  url "https://github.com/Shuichi346/DeepFilterNet3-VST3/releases/download/v0.6.0/DeepFilterNR-v0.6.0-macos-arm64.zip"
  name "DeepFilterNet3"
  desc "Free audio plugin"
  homepage "https://github.com/Shuichi346/DeepFilterNet3-VST3"
  depends_on :macos
  artifact "DeepFilterNR-v0.6.0-macos-arm64", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end
