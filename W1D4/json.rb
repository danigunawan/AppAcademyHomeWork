require 'json'

{ "a" => "always", "b" => "closing", "c" => "be"}.to_json

JSON.parse('{"a":"always","b":"be","c":"closing"}')
