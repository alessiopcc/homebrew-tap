class Glidesh < Formula
  desc "Fast, stateless, SSH-only infrastructure automation"
  homepage "https://glidesh.netlify.app"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alessiopcc/glidesh/releases/download/v2.0.0/glidesh-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "e6ab342a33efabbe6dedff083c3a4c6223439cfb540a1883b6684dcc9b73004b"
    end
    on_intel do
      url "https://github.com/alessiopcc/glidesh/releases/download/v2.0.0/glidesh-v2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "af91bc14e7a1a8b3029425b68ebbcb3461c572e83c6a968a619b6d1c9b0acaf9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alessiopcc/glidesh/releases/download/v2.0.0/glidesh-v2.0.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "09b0ca47ba0de0e64caf144a9a626432db0ee1d5cf3287b0e72f39d381f8bd0d"
    end
    on_intel do
      url "https://github.com/alessiopcc/glidesh/releases/download/v2.0.0/glidesh-v2.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "10abb3ad541be1fc5cf87aff08698221973ff9a218cc7403c59c6b2901606901"
    end
  end

  def install
    bin.install "glidesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glidesh --version")
  end
end
