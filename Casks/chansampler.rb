cask "chansampler" do
  version "1.4.0"
  sha256 "24fa2dd70dbee9f9bd0af2fc640b6dba0b31460cc3a3364df71218050b5b2357"
  url "https://github.com/MaymiPR/Chan-Sampler/releases/download/v1.4.0/ChanSampler-1.4.0-macOS.pkg"
  name "ChanSampler"
  desc "Free audio plugin"
  homepage "https://github.com/MaymiPR/ChanSampler"
  depends_on :macos
  pkg "ChanSampler-1.4.0-macOS.pkg"
end
