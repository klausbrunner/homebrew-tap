# Generated with JReleaser 1.5.0 at 2023-02-27T18:38:40.384224679Z
class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos-cli"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.1.2/solarpos-0.1.2-osx-x86_64.zip"
  version "0.1.2"
  sha256 "fb1585094ad226a5fa7d0be34a8a06022e02e42c71535c0f205839e28c137583"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.1.2", output
  end
end
