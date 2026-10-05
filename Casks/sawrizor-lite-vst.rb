cask "sawrizor-lite-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sawrizor.dmg"
  name "Sawrizor Lite"
  desc "Sawrizor Lite is an all-round wavetable / saw synthesizer that combines 2 high quality saw oscillators."
  homepage "https://plugins4free.com/plugin/3417"
  depends_on :macos
  container type: :dmg
  pkg "Sawrizor.pkg"
end
