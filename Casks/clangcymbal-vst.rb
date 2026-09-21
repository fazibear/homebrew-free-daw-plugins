cask "clangcymbal-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/ClangCymbal_0.0.1.zip"
  name "ClangCymbal"
  desc "ClangCymbal is a monophonic synthesizer specialized for metallic percussion sounds ."
  homepage "https://plugins4free.com/plugin/3835"
  depends_on :macos
  artifact "ClangCymbal_0.0.1", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
