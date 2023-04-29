# Generated with JReleaser 1.6.0 at 2023-04-29T16:17:03.360999442Z
class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.3.3/solarpos-0.3.3.zip"
  version "0.3.3"
  sha256 "6060f8771b1e957cfd344e8bd63546732ba5a1c74c7e9077e6fd0851d45f2ca3"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.3.3", output
  end
end
