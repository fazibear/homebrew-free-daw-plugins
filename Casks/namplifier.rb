cask "namplifier" do
  version "0.9.4"
  sha256 "735ec5e73cf3831d8c42c7104103f5ad2be297afdb958fc8f1acf4a90978886e"

  url "https://github.com/fazibear/namplifier.fazibear.me/releases/download/#{version}/namplifier-macos.pkg"
  name "Namplifier"
  desc "Neural amp model plugin"
  homepage "https://namplifier.fazibear.me"

  depends_on :macos

  pkg "namplifier-macos.pkg"

  postflight_steps do
    run "/bin/echo", args: ["Removing macOS quarantine attributes from Namplifier..."], print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/VST3/namplifier.vst3"], sudo: true
  end
end
