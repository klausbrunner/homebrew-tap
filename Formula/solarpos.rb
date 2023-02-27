# Generated with JReleaser 1.5.0 at 2023-02-27T18:56:03.148707059Z
class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos-cli"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.1.3/solarpos-0.1.3.zip"
  version "0.1.3"
  sha256 "a87641d3f8f58c3d1747fc18a8209fc01f01bbb80e4bb68957278f22ad9cf5b3"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.1.3", output
  end
end
