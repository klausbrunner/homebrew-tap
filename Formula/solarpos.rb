# Generated with JReleaser 1.14.0 at 2024-09-28T19:17:48.359199151Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.4.3/solarpos-0.4.3.zip"
  version "0.4.3"
  sha256 "dec883362e9f381d25eed698d42d3ec16be1f0e4f3009819443d75f11c594e41"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.4.3", output
  end
end
