# Generated with JReleaser 1.18.0 at 2025-05-25T19:50:59.393584198Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.5.0/solarpos-0.5.0.zip"
  version "0.5.0"
  sha256 "12b371b6be19de05213efb5ab7595e11893cbe1201d09a1bdf180de1c42a5ec4"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.5.0", output
  end
end
