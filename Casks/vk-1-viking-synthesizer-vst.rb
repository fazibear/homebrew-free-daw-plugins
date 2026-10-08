cask "vk-1-viking-synthesizer-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VK-1-Viking_MacVST.zip"
  name "VK-1 Viking Synthesizer"
  desc "VK-1 Viking Synthesizer is an authentic emulation of the classic Moog Voyager monophonic analog synthesizer ."
  homepage "https://plugins4free.com/plugin/3043"
  depends_on :macos
  pkg "macOS/VK-1 Viking Synthesizer.pkg"
end
