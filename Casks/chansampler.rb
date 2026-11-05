cask "chansampler" do
  version "1.7.1"
  sha256 "d0253e456ada104fcd819c7576b03bfa8c062fb1f703853bbb6315326b5a99c8"
  url "https://github.com/MaymiPR/Chan-Sampler/releases/download/v1.7.1/ChanSampler-1.7.1-macOS.pkg"
  name "ChanSampler"
  desc "Free audio plugin"
  homepage "https://github.com/MaymiPR/ChanSampler"
  depends_on :macos
  pkg "ChanSampler-1.7.1-macOS.pkg"
end
