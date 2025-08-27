# Generated with JReleaser 1.19.0 at 2025-08-27T15:24:58.985697552Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.8/solarpos-0.7.8.zip"
  version "0.7.8"
  sha256 "71fb25302a5e8684f82f533aafc8797111aa3d86aec19655509f658ce6f41f67"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.8", output
  end
end
