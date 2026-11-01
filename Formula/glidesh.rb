class Glidesh < Formula
  desc "Fast, stateless, SSH-only infrastructure automation"
  homepage "https://glidesh.netlify.app"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alessiopcc/glidesh/releases/download/v2.1.0/glidesh-v2.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "a2242e095f6b6f86fee450eb7bf229c133afb53af131e2a733299eb990f80285"
    end
    on_intel do
      url "https://github.com/alessiopcc/glidesh/releases/download/v2.1.0/glidesh-v2.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b68cb7b210f2dc31d46cb805cd770041193e393acadf63ea0ec0a466dba44489"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alessiopcc/glidesh/releases/download/v2.1.0/glidesh-v2.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad1874b4bed8bdfd5d7d2420d8c5930a32a18cc34130da6366590b675741d8d9"
    end
    on_intel do
      url "https://github.com/alessiopcc/glidesh/releases/download/v2.1.0/glidesh-v2.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f3ef51fef80776f1234484591a872c6efed4990b29571b0c1f8c7dd19982350f"
    end
  end

  def install
    bin.install "glidesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glidesh --version")
  end
end
