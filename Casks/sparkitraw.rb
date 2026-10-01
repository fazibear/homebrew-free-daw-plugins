cask "sparkitraw" do
  version "1.0.1"
  sha256 "10589ca42408ae21bb1865e2b2bd75353f9106e76013a3994aca917386f36e94"
  url "https://github.com/remiblaze/SparkitRaw/releases/download/v1.0.1/SparkitRaw_Installer.pkg"
  name "SparkitRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/SparkitRaw"
  depends_on :macos
  pkg "SparkitRaw_Installer.pkg"
end
