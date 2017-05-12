defmodule SigilsTest do
  import Kernel, except: [sigil_c: 2]

  def sigil_c(content, _opts) do
    String.length(content)
  end

  def count_things do
    ~c/count/
  end
end

