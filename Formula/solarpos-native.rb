# Generated with JReleaser 1.19.0 at 2025-08-27T07:04:26.551919497Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.2/solarpos-0.7.2-osx-aarch_64.zip"
  version "0.7.2"
  sha256 "1ae2f4f0ecbb68aa8138ee1767a4efa4b5c0e21a819225e12ada9147eb3a1c8a"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.2", output
  end
end
