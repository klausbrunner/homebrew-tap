# Generated with JReleaser 1.5.0 at 2023-02-27T18:56:03.148707059Z
class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos-cli"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.1.3/solarpos-0.1.3-osx-x86_64.zip"
  version "0.1.3"
  sha256 "f9db1f9f0c501643a948e8c9ce35b8fc12e443a2dec82cbd1334500bde1ca50d"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.1.3", output
  end
end
