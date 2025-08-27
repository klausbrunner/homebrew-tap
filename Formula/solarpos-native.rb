# Generated with JReleaser 1.19.0 at 2025-08-27T07:30:39.849164249Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.3/solarpos-0.7.3-osx-aarch_64.zip"
  version "0.7.3"
  sha256 "94094fdc6735d1866b477d55d780330c74bec55a702a1a9c7231db7a3f3c9c41"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.3", output
  end
end
