cask "wavemind-nam-universal-ii" do
  version "2.0.0.3"
  sha256 "f7e0bfd3cb2d967ff5f3a9375397ee36656caead1a37309878e598bc29bfccae"

  url "https://wavemind.net/installers/nam-universal-ii/mac/NAM%20Universal%20II.pkg"
  name "NAM Universal II"
  desc "Neural amp model loader by WaveMind"
  homepage "https://wavemind.net/software"

  depends_on :macos

  pkg "NAM Universal II.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from NAM Universal II..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Applications/NAM Universal II.app",
                                 "/Library/Audio/Plug-Ins/Components/NAM Universal II.component",
                                 "/Library/Audio/Plug-Ins/VST3/NAM Universal II.vst3"],
                          sudo: true
  end
end
