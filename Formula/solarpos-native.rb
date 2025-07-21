# Generated with JReleaser 1.19.0 at 2025-07-21T07:01:43.123601111Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.5.1/solarpos-0.5.1-osx-aarch_64.zip"
  version "0.5.1"
  sha256 "5b32563f3cb516156bc09fd11642228a70a2ac99c2f3769ccdc2eedcd6dbc9d3"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.5.1", output
  end
end
