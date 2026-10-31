cask "chan-sampler" do
  version "1.4.2"
  sha256 "51c0a568d9b99ae85af2e60da61e29bfb3617bf849e4f76177362a1f0562de5a"
  url "https://github.com/MaymiPR/Chan-Sampler/releases/download/v1.4.2/ChanSampler-1.4.2-macOS.pkg"
  name "Chan-Sampler"
  desc "Free audio plugin"
  homepage "https://github.com/MaymiPR/Chan-Sampler"
  depends_on :macos
  pkg "ChanSampler-1.4.2-macOS.pkg"
end
