cask "lo-fi-keys-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Lo-fi-Keys_MacOS.zip"
  name "Lo-Fi Keys"
  desc "Lo-Fi Keys is a processed piano rompler inspired by today’s modern Lo-Fi music."
  homepage "https://plugins4free.com/plugin/3458"
  depends_on :macos
  pkg "Lofi Keys - macOS/Lofi_Keys_Free.pkg"
end
