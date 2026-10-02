cask "torchitraw" do
  version "1.0.1"
  sha256 "793dcade038e60861415994584fbc948ae90054f1f2a80a07d9290606323c417"
  url "https://github.com/remiblaze/TorchitRaw/releases/download/v1.0.1/TorchitRaw_Installer.pkg"
  name "TorchitRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/TorchitRaw"
  depends_on :macos
  pkg "TorchitRaw_Installer.pkg"
end
