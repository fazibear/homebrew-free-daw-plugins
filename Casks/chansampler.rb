cask "chansampler" do
  version "1.3.1"
  sha256 "d7a9d32e3d4f7e9038e0c9f1c462a2728c9ce15974e765fe3264d42e8906acfa"
  url "https://github.com/MaymiPR/ChanSampler/releases/download/v1.3.1/ChanSampler-1.3.1-macOS.pkg"
  name "ChanSampler"
  desc "Free audio plugin"
  homepage "https://github.com/MaymiPR/ChanSampler"
  depends_on :macos
  pkg "ChanSampler-1.3.1-macOS.pkg"
end
