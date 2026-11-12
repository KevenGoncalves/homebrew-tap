# Written by the release workflow of KevenGoncalves/lig (packaging/homebrew); edits here are replaced.
class Lig < Formula
  desc "Fig-style IDE autocomplete for your terminal (zsh, bash and fish)"
  homepage "https://github.com/KevenGoncalves/lig"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.3.0/lig-1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "a3c63a9e91b679e267718ed9aee424ebce2f575e06e8f732f0f5e29d043f508e"
    end
    on_arm do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.3.0/lig-1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "86558a1327fa46823f0b7291e9d1df896d234fdb368d6196fa941cb02df84bc4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.3.0/lig-1.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f929af7bb0a06275e3af3cd1b41aaaea3717555956af03dde3e445ddf4d6f079"
    end
    on_arm do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.3.0/lig-1.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f0ce4f86f7bb29dd84b7b09e6a3d40e07318318b368048235094c4337b4f800c"
    end
  end

  def install
    bin.install "lig"
  end

  def caveats
    <<~EOS
      Run `lig install` to turn on the popup in your shell (zsh, bash or fish).
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lig --version")
  end
end
