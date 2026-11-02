cask "chansampler" do
  version "1.6.0"
  sha256 "7eaaa100471c63f1af4e5936e0b840fab229bfe2f59c113d47e70e23e113962e"
  url "https://github.com/MaymiPR/Chan-Sampler/releases/download/v1.6.0/ChanSampler-1.6.0-macOS.pkg"
  name "ChanSampler"
  desc "Free audio plugin"
  homepage "https://github.com/MaymiPR/ChanSampler"
  depends_on :macos
  pkg "ChanSampler-1.6.0-macOS.pkg"
end
