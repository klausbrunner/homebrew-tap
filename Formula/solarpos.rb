# Generated with JReleaser 1.19.0 at 2025-08-21T08:39:55.059384783Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.5.2/solarpos-0.5.2.zip"
  version "0.5.2"
  sha256 "03a488aa3ad63df0fb621eb5b5d707c809bbc3270899a9165fae81bdc57a8ef6"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.5.2", output
  end
end
