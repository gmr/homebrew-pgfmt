class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.1.3"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.3/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "99959b318a5f9c45c158af2c869dcb0585877939abbf22847ccd97599195cfb0"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.3/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "cff5790e06158e19bc4bb89186bf5dd2474ec5794d8fd292a5d90c696b8c8876"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.3/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "600703338b1a651192d873317e354a2ebc6f42f45093664b5ca9bd3033dddcd8"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.3/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b8c01e677f8a52a61b5215a1dc3218ea3bca62c57416dd634aa736591bb1a3c"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
