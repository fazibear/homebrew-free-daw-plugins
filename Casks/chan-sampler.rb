cask "chan-sampler" do
  version "1.6.1"
  sha256 "11875404f2fe878d85b635ee1efb945dbddc8070d035abd9d794c3b76107af91"
  url "https://github.com/MaymiPR/Chan-Sampler/releases/download/v1.6.1/ChanSampler-1.6.1-macOS.pkg"
  name "Chan-Sampler"
  desc "Free audio plugin"
  homepage "https://github.com/MaymiPR/Chan-Sampler"
  depends_on :macos
  pkg "ChanSampler-1.6.1-macOS.pkg"
end
