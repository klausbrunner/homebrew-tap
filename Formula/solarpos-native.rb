# Generated with JReleaser 1.8.0 at 2023-10-24T07:03:12.036826893Z
class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.4.0/solarpos-0.4.0-osx-x86_64.zip"
  version "0.4.0"
  sha256 "cdde0cf5fa41c166a90593b736088d89a2991bf64a09e9b4af498fbd34eaa505"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.4.0", output
  end
end
