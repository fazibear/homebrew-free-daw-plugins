cask "koenichrecall-midas512" do
  version "1.0.1"
  sha256 "8a6432b2ce58b67637be1e1025f956b830d0490670979533ad8ba0c2dbf48444"
  url "https://github.com/koenichsound-sudo/koenichrecall-midas512/releases/download/v1.0.1/KoenichRecall-MIDAS512-v1.0.1-macOS-arm64.zip"
  name "koenichrecall-midas512"
  desc "Free audio plugin"
  homepage "https://github.com/koenichsound-sudo/koenichrecall-midas512"
  depends_on :macos
  artifact "KoenichRecall-MIDAS512-v1.0.1-macOS-arm64/Koenich Recall - MIDAS 512 EQ.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Koenich Recall - MIDAS 512 EQ.vst3"
end
