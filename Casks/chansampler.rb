cask "chansampler" do
  version "1.2.3"
  sha256 "7a03b0eb4dfda5c430ea97e8535b85f7ed3cc04c5acd8d1b67880f51197f9bc7"
  url "https://github.com/MaymiPR/ChanSampler/releases/download/v1.2.3/ChanSampler-1.2.3-macOS.pkg"
  name "ChanSampler"
  desc "Free audio plugin"
  homepage "https://github.com/MaymiPR/ChanSampler"
  depends_on :macos
  pkg "ChanSampler-1.2.3-macOS.pkg"
end
