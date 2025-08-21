# Generated with JReleaser 1.19.0 at 2025-08-21T08:39:55.059384783Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.5.2/solarpos-0.5.2-osx-aarch_64.zip"
  version "0.5.2"
  sha256 "d8af6eca9ab09439e32e0da1e40a9bb0fe41007aec5b1c73319ba7874deb1639"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.5.2", output
  end
end
