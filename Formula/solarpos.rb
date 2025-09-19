# Generated with JReleaser 1.20.0 at 2025-09-19T10:04:22.84321288Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.8.1/solarpos-0.8.1.zip"
  version "0.8.1"
  sha256 "6e8c1678b41de237ea1d8a10447e691c634356784ecad69ecb5c4f62b6cb66fc"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.8.1", output
  end
end
