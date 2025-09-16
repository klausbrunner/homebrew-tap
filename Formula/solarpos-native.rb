# Generated with JReleaser 1.20.0 at 2025-09-16T15:23:52.646994181Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.8.0/solarpos-0.8.0-osx-aarch_64.zip"
  version "0.8.0"
  sha256 "de7805f8e56cd9e325bbeca508db8ddea2d221cc5134d4881a2b479f1682febe"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.8.0", output
  end
end
