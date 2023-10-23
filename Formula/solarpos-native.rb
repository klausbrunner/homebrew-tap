# Generated with JReleaser 1.8.0 at 2023-10-23T09:56:24.389006743Z
class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.3.6/solarpos-0.3.6-osx-x86_64.zip"
  version "0.3.6"
  sha256 "39492a9e7394a504af9cf5f0289b35c83b5aee32f9c01dc33732b37cc63a731f"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.3.6", output
  end
end
