cask "goldengenerator-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/goldenGenerator.component.zip"
  name "goldenGenerator"
  desc "goldenGenerator is a binaural / monaural beats generator that works by waveforms based on the golden number."
  homepage "https://plugins4free.com/plugin/2688"
  depends_on :macos
  artifact "goldenGenerator.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
