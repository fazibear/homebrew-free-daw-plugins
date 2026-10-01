cask "bjam-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/BJAM2_MacVST.zip"
  name "BJAM"
  desc "BJAM is a Strat electric guitar rompler."
  homepage "https://plugins4free.com/plugin/3067"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Mac VST/BJAM 2.vst", "{{user}}/Library/Audio/Plug-Ins/VST/BJAM 2.vst"
  end
end
