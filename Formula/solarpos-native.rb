# Generated with JReleaser 1.19.0 at 2025-08-27T08:07:59.805638694Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.6/solarpos-0.7.6-osx-aarch_64.zip"
  version "0.7.6"
  sha256 "052cb208bab9ef006d86bc4d1ac6fb9593396eacdf850da4f3e0c9dcda7cdcd2"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.6", output
  end
end
