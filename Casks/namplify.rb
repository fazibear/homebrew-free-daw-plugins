cask "namplify" do
  version "2.0.0-beta.2"
  sha256 "c11014baea35adb5992d93dd2acedc4987aecce5922714c1933b00b588e13255"
  url "https://github.com/Roccccky/NAMplify/releases/download/v2.0.0-beta.2/NAMplify_2.0.0-beta.2_macos_universal.pkg"
  name "NAMplify"
  desc "Free audio plugin"
  homepage "https://github.com/Roccccky/NAMplify"
  depends_on :macos
  pkg "NAMplify_2.0.0-beta.2_macos_universal.pkg"
end
