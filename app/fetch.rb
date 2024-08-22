require "oj"

module Fetch
  def fetch(name:)
    actions = File.read("./#{self.name}s.json")    
    action_hash = Oj.load(actions, {symbol_keys: true})[name.to_sym]
    new(**action_hash)
  end
end