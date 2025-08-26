# Generated with JReleaser 1.19.0 at 2025-08-26T18:33:42.354448001Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.1/solarpos-0.7.1.zip"
  version "0.7.1"
  sha256 "c3932c5eb6ced663ddc3b8074d5fc16c291bff62c4941d08ed5a447b0f20bde0"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.1", output
  end
end
