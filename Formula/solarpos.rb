# Generated with JReleaser 1.20.0 at 2025-09-23T17:08:46.654304915Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.8.2/solarpos-0.8.2.zip"
  version "0.8.2"
  sha256 "96b0d47c1edfc6892eb5bcc0cb6c67df75df3784e033ed004e12a4c0709a4800"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.8.2", output
  end
end
