cask "shoeless-drive-pedal" do
  version "2.0.0"
  sha256 "2b493e2c0ab10c83947d2e846bd8ddc0e31e745b3af183f213a3e477cb96ee35"

  url "https://wavemind.net/installers/resington-shoeless-drive/mac/Shoeless%20Drive%20Pedal%20v#{version}.pkg"
  name "Shoeless Drive Pedal"
  desc "Guitar overdrive plugin"
  homepage "https://wavemind.net/software"

  depends_on :macos

  pkg "Shoeless Drive Pedal v#{version}.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Shoeless Drive Pedal..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/Components/Shoeless Drive Pedal.component"],
                          sudo: true
  end
end
