class Sunce < Formula
  desc "High-performance command-line solar position calculator"
  homepage "https://github.com/klausbrunner/sunce"
  version "0.2.3"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/klausbrunner/sunce/releases/download/v0.2.3/sunce-aarch64-apple-darwin.tar.zst"
    sha256 "0e3275de2da789fdab6058ef049c4fa73343bc77ba054da48a6f956d8a97e944"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/klausbrunner/sunce/releases/download/v0.2.3/sunce-x86_64-unknown-linux-gnu.tar.zst"
    sha256 "75ddb043d141f6e895e7561c26dd20a3edea9ab494d3e0ceff52213cc8f52f7d"
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
    bin.install "sunce" if OS.mac? && Hardware::CPU.arm?
    bin.install "sunce" if OS.linux? && Hardware::CPU.intel?

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
