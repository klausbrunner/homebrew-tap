# Generated with JReleaser 1.19.0 at 2025-08-23T06:45:35.976852355Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.6.0/solarpos-0.6.0-osx-aarch_64.zip"
  version "0.6.0"
  sha256 "84805d60860ecb8ead3065871aafa459cc09ac159469b829cd5586778b7a874b"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.6.0", output
  end
end
