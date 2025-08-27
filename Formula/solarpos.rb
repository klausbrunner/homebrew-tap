# Generated with JReleaser 1.19.0 at 2025-08-27T07:30:39.849164249Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.3/solarpos-0.7.3.zip"
  version "0.7.3"
  sha256 "22cd9dbb395d6a1f045c3bbcc022ea72407288297d7696a08773362275326786"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.3", output
  end
end
