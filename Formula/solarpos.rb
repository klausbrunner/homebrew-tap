# Generated with JReleaser 1.5.0 at 2023-02-27T18:38:40.384224679Z
class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos-cli"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.1.2/solarpos-0.1.2.zip"
  version "0.1.2"
  sha256 "3985e4bad2c79e65ad407d7dd8164dbb72fcbf0d76876efd816c16f37b11f714"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.1.2", output
  end
end
