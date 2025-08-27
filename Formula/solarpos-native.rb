# Generated with JReleaser 1.19.0 at 2025-08-27T15:24:58.985697552Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.8/solarpos-0.7.8-osx-aarch_64.zip"
  version "0.7.8"
  sha256 "78fa355bcb0aa9b160f35a5f169514ca0817631f32466e82f1ac61aafaf5542d"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.8", output
  end
end
