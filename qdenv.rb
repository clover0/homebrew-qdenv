class Qdenv < Formula
  version '0.0.0'
  homepage 'https://github.com/clover0/qdenv'
  if OS.mac?
    url "https://github.com/clover0/qdenv/releases/download/v0.0.0/qdenv_0.0.0_darwin_amd64.tar.gz"
    sha256 'af530bf6b948c1266f876304c918ae3e74ad72531f11eca6f13798f0912dfe8e'
  end
  if OS.linux?
    url "https://github.com/clover0/qdenv/releases/download/v0.0.0/qdenv_0.0.0_linux_amd64.tar.gz"
    sha256 'cf22bcb67c279304e192c12e224e63dc33de4b9d79ae85e584c00e662e5add91'
  end
  head 'https://github.com/clover0/qdenv.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'qdenv'
  end
end
