# Generated with JReleaser 1.19.0 at 2025-08-27T08:07:59.805638694Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.6/solarpos-0.7.6.zip"
  version "0.7.6"
  sha256 "9d6474c68f6ee32b6cb8119d849d9a4acbe1b9a4e0fdfe01f10ecf8a7c4044ff"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.6", output
  end
end
