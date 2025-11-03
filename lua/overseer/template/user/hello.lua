return {
  name = "Hello World",
  builder = function()
    return {
      cmd = { "echo" },
      args = { "Hello world" },
    }
  end,
  condition = {
    callback = function()
      return true
    end,
  },
}
