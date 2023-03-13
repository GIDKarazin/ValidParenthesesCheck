def valid_parentheses?(string)
  stack = []
  mapping = { '(' => ')', '{' => '}', '[' => ']' }

  string.each_char do |char|
    case char
    when *mapping.keys
      stack.push(char)
    when *mapping.values
      return false unless stack.pop == mapping.key(char)
    end
  end

  stack.empty?
end

puts valid_parentheses?('(){}[]')   # => true
puts valid_parentheses?('([{}])')   # => true
puts valid_parentheses?('(}')       # => false
puts valid_parentheses?('[(])')     # => false
puts valid_parentheses?('[({})](]') # => false
