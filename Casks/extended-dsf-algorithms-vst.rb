cask "extended-dsf-algorithms-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Extended-DSF-Oscillators_MacOSX.zip"
  name "Extended DSF Algorithms"
  desc "Extended DSF Algorithms is an open-source set of integrated algorithms by through the use of Discrete Summation Formulae."
  homepage "https://plugins4free.com/plugin/3713"
  depends_on :macos
  artifact "MacOSX/Extended DSF Algorithms VST.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
