# Generated with JReleaser 1.19.0 at 2025-08-27T15:45:20.845698164Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.9/solarpos-0.7.9-osx-aarch_64.zip"
  version "0.7.9"
  sha256 "c25d1a98c000496d7a6b448ee4358ab6998569dbcee4deabf2014c1719ddbed0"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.9", output
  end
end
