# Homebrew formula for the `jeliyad` daemon.
#
# Currently filled for v0.4.2. v0.4.0 was the first release under the Jeliya
# name (the project renamed from Bantaba on 2026-07-05; docs/naming.md). Earlier
# releases shipped `bantabad-*` archives and cannot be installed by this formula.
#
# This belongs in a tap, not homebrew-core: publish it as
#   kortiene/homebrew-jeliya  (repo `homebrew-jeliya`, file `Formula/jeliya.rb`)
# then users install with:
#   brew install kortiene/jeliya/jeliya
#
# To update for a new release:
#   1. Replace the release number in each URL.
#   2. Replace each sha256 with the value from the matching release sidecar.
#      The release workflow uploads a `<asset>.sha256` next to every archive.
class Jeliya < Formula
  desc "Peer-to-peer daemon serving the Jeliya UI over a local WebSocket"
  homepage "https://github.com/kortiene/jeliya"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kortiene/jeliya/releases/download/v0.4.2/jeliyad-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "281999955999db45fc6ab8355b491a95f13e8701000ffe2efd2e1c6ba037ee96"
    end
    on_intel do
      url "https://github.com/kortiene/jeliya/releases/download/v0.4.2/jeliyad-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "7ac221c393a9d22e5b1c54a3c90b296576f66a3e0e02d64a72020cb6c54989cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kortiene/jeliya/releases/download/v0.4.2/jeliyad-v0.4.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95aa59d267d596c33934506986bcf6af84daaf5e7e028c32967229391b67382a"
    end
    on_intel do
      url "https://github.com/kortiene/jeliya/releases/download/v0.4.2/jeliyad-v0.4.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0831aa5a733cff5497a28cd18657e8cf92106f3b9d4be35dda030b6b92dd0eba"
    end
  end

  def install
    bin.install "jeliyad"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jeliyad --version")
  end
end
