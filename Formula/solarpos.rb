# Generated with JReleaser 1.19.0 at 2025-08-27T15:45:20.845698164Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.9/solarpos-0.7.9.zip"
  version "0.7.9"
  sha256 "0fc432fc9ec239d3e53b0e45029f88ede6e578e1d8377f87306a2bd48dfeb12e"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.9", output
  end
end
