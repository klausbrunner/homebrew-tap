# Generated with JReleaser 1.5.0 at 2023-03-05T20:20:42.77111709Z
class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.2.0/solarpos-0.2.0-osx-x86_64.zip"
  version "0.2.0"
  sha256 "6ba17992869d33f8516309150d617a7d992d91089c6f647d4656bc3aa824994f"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.2.0", output
  end
end
