# Generated with JReleaser 1.11.0 at 2024-04-29T17:39:27.608255609Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.4.2/solarpos-0.4.2.zip"
  version "0.4.2"
  sha256 "4200ed18ac1eb577bf5844d2483bb2d802adb6995dc7442a0146efb9f9b0c2f6"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.4.2", output
  end
end
