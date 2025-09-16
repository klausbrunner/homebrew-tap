# Generated with JReleaser 1.20.0 at 2025-09-16T15:23:52.646994181Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.8.0/solarpos-0.8.0.zip"
  version "0.8.0"
  sha256 "966aea90406fa1bad786145bcf8670ca359d88f6e2912ba041599328b1e70a16"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.8.0", output
  end
end
