# Generated with JReleaser 1.20.0 at 2025-09-10T20:01:17.311827158Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.10/solarpos-0.7.10.zip"
  version "0.7.10"
  sha256 "c6c8ddadddc5f52eba7ba541f2d465e526f0d4ceebf0998cb725770a4519efb4"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.10", output
  end
end
