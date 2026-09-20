cask "extended-dsf-algorithms-open-source-oscillators-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Extended-DSF-Oscillators_MacOSX.zip"
  name "Extended DSF Algorithms Open-source oscillators"
  desc "Extended DSF Algorithms Open-source oscillators"
  homepage "https://plugins4free.com/plugin/3713"
  depends_on :macos
  artifact "Extended-DSF-Oscillators_MacOSX", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
