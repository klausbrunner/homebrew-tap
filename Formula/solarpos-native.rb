# Generated with JReleaser 1.20.0 at 2025-09-23T17:08:46.654304915Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.8.2/solarpos-0.8.2-osx-aarch_64.zip"
  version "0.8.2"
  sha256 "d79d2bbfc68b8acc4b7332ad5a136e406923cf7e2c73459b596d51c592b78e4c"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.8.2", output
  end
end
