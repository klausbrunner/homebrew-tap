# Generated with JReleaser 1.20.0 at 2025-09-19T10:04:22.84321288Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.8.1/solarpos-0.8.1-osx-aarch_64.zip"
  version "0.8.1"
  sha256 "bc69d5205f9fc0d7f0829a637c36ad1f1aea2e3999e3ff5403679b87652f9be9"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.8.1", output
  end
end
