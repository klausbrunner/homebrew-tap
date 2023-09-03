# Generated with JReleaser 1.8.0 at 2023-09-03T21:20:59.021700559Z
class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.3.5/solarpos-0.3.5.zip"
  version "0.3.5"
  sha256 "85bc402c8e4702b4df4c91cd33a83ede1f7e22ac14902b758db6e5ac0d5ac61b"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.3.5", output
  end
end
