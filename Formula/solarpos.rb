# Generated with JReleaser 1.19.0 at 2025-08-27T07:59:24.489741053Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.5/solarpos-0.7.5.zip"
  version "0.7.5"
  sha256 "9c0175e94536516f290f1926900e51b04ade96def088aa63cd8e950152019164"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.5", output
  end
end
