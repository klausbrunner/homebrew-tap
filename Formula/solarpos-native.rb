# Generated with JReleaser 1.8.0 at 2023-09-03T21:20:59.021700559Z
class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.3.5/solarpos-0.3.5-osx-x86_64.zip"
  version "0.3.5"
  sha256 "343d70abc1c2a9a8c04b7d7d508217f49f7435537ed1d2433d189648c7db0f07"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.3.5", output
  end
end
