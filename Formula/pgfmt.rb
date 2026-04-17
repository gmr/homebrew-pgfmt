class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.1.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.1/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "60069d851c9f3a79c5829282feffc4e9936ce0f6be0d61d42440e05b3f7a0a28"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.1/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "7572c2238f65e6d5741a680f63d2e5877ca8991ae2505bbf241d06b433b78301"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.1/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef19fa3f9c83944a8d8f17805b6c5add079403280568dbba7df009e86b0dfbe9"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.1/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa239b96070df86bc21cc31638b9bc026e48327c9eb2c1afde2c03c13f2c1e32"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
