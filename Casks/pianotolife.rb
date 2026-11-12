cask "pianotolife" do
  version "11.1.2-PianoToLife"
  sha256 "89fd997e5a03c259f0f85392eec42b48715e0ed12bca4abcc22ff50d29a9bc65"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.1.2-PianoToLife/PianoToLife-11.1.2-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-11.1.2-macOS-AppleSilicon.pkg"
end
