# Generated with JReleaser 1.19.0 at 2025-08-23T06:45:35.976852355Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.6.0/solarpos-0.6.0.zip"
  version "0.6.0"
  sha256 "3e2c82080ba9f70c91ed582e55348d225406c7cb7aadd3669bf633e1d19cd981"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.6.0", output
  end
end
