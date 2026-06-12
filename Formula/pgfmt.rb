class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.1.2"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.2/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "3a824f6565668ccae068e2ac5b7dd99191914ea0925bc4c31376b0acfde4a635"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.2/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "03b3f00feb967d04d2a1cead734d9e34fcddee595d2c1567fb3dd6266a597348"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.2/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dfac3fd2563436145f91a842569a61783cd89faabf8a7864c7d32c1cfd948dae"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.2/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46b932f2308f47a649a6ae45124730a4ebdc2a3ad6295e02eeb838fa553d32de"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
