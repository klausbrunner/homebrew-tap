# Generated with JReleaser 1.19.0 at 2025-07-21T07:01:43.123601111Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.5.1/solarpos-0.5.1.zip"
  version "0.5.1"
  sha256 "92c3845d1a922dcf4b27a661304cb10bf94042cf28b2ef339ff6f3c18983c9cb"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.5.1", output
  end
end
