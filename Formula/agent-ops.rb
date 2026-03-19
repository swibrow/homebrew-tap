class AgentOps < Formula
  desc "TUI for monitoring and resuming Claude Code agent sessions in tmux"
  homepage "https://github.com/swibrow/agent-ops"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/swibrow/agent-ops/releases/download/v0.2.0/agent-ops_0.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "2f0fe6766f81ec4cdae103f0c94d6df160da84040b034ff9a9b202894ab0f51c"
    end
    on_arm do
      url "https://github.com/swibrow/agent-ops/releases/download/v0.2.0/agent-ops_0.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "fbfd4268f5fe7dc43d51eb521bfc2d092f3894f17bff181403bf3993d1433124"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/swibrow/agent-ops/releases/download/v0.2.0/agent-ops_0.2.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4538f79dd8be637515e54ab2d62cb1b10626aadc4866cc38c21129643a703f87"
    end
    on_arm do
      url "https://github.com/swibrow/agent-ops/releases/download/v0.2.0/agent-ops_0.2.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "57b76b27f4e224a9cca14fe2d937d5d452f50c0ace1584af99073181d3adc874"
    end
  end

  def install
    bin.install "agent-ops"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-ops --version", 2)
  end
end
