cask "chansampler" do
  version "1.3.0"
  sha256 "f52ef124a88627ce37c5a9a3974a1ca0f7fe09bb0ce3cbbe86abfb9633cf4371"
  url "https://github.com/MaymiPR/ChanSampler/releases/download/v1.3.0/ChanSampler-1.3.0-macOS.pkg"
  name "ChanSampler"
  desc "Free audio plugin"
  homepage "https://github.com/MaymiPR/ChanSampler"
  depends_on :macos
  pkg "ChanSampler-1.3.0-macOS.pkg"
end
