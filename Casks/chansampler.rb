cask "chansampler" do
  version "1.2.2"
  sha256 "1e378f13ac4da3cd4b8c73c64d483cb22d7a36135c12d02243c12e69003add73"
  url "https://github.com/MaymiPR/ChanSampler/releases/download/v1.2.2/ChanSampler-1.2.2-macOS.pkg"
  name "ChanSampler"
  desc "Free audio plugin"
  homepage "https://github.com/MaymiPR/ChanSampler"
  depends_on :macos
  pkg "ChanSampler-1.2.2-macOS.pkg"
end
