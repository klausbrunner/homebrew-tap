# Generated with JReleaser 1.19.0 at 2025-08-26T18:33:42.354448001Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.1/solarpos-0.7.1-osx-aarch_64.zip"
  version "0.7.1"
  sha256 "90f729a8ae30b0f8e9fa7354371aac1229877990323b63cbf22ed9c17861e006"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.1", output
  end
end
