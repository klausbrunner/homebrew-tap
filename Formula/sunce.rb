class Sunce < Formula
  desc "High-performance command-line solar position calculator"
  homepage "https://github.com/klausbrunner/sunce"
  version "0.5.0"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/klausbrunner/sunce/releases/download/v0.5.0/sunce-aarch64-apple-darwin.tar.zst"
    sha256 "df5e9d042881350f3cce02d3c2bd142d27204d30faee521c9fdedebffadfb316"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/klausbrunner/sunce/releases/download/v0.5.0/sunce-x86_64-unknown-linux-gnu.tar.zst"
    sha256 "30c90fbdc9035e4ef30502616d2d30740361b9c7476a964e1e84c41d330cb2b8"
  end
  license "MIT"

  BINARY_ALIASES = {
    "aarch64-apple-darwin":     {},
    "x86_64-pc-windows-gnu":    {},
    "x86_64-unknown-linux-gnu": {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "sunce"
    end
    if OS.linux? && Hardware::CPU.intel?
      bin.install "sunce"
    end

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
