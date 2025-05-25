# Generated with JReleaser 1.18.0 at 2025-05-25T19:50:59.393584198Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.5.0/solarpos-0.5.0-osx-aarch_64.zip"
  version "0.5.0"
  sha256 "1febe9e1f650f1238de44ebdffa3e34e5d80540cb857fd95e1613085e8b8ffd1"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.5.0", output
  end
end
