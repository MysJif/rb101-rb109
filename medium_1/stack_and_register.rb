# Push the register value on to the stack. Leave value in the register.
def mini_push(register, stack)
  stack << register
end

# Pops a value from the stack and adds it to the register value, storing the result in the register.
def mini_add(register, stack)
  register += stack.pop
end

# Pops a value from the stack and subtracts it from the register value, storing the result in the register.
def mini_sub(register, stack)
  register -= stack.pop
end

# Pops a value from the stack and multiplies it by the register value, storing the result in the register.
def mini_mult(register, stack)
  register *= stack.pop
end

# Pops a value from the stack and divides it into the register value, storing the integer result in the register.
def mini_div(register, stack)
  register /= stack.pop
end

# Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
def mini_mod(register, stack)
  register %= stack.pop
end

# Removes the topmost item from the stack and place in register.
def mini_pop(register, stack)
  register = stack.pop
end

# Print the register value.
def mini_print(register)
  puts register
end

# Parser
def minilang(commands)
  stack = []
  register = 0

  commands = commands.split(' ')
  commands.each do |command|
    case command
    when 'PUSH' then mini_push(register, stack)
    when 'ADD' then register = mini_add(register, stack)
    when 'SUB' then register = mini_sub(register, stack)
    when 'MULT' then register = mini_mult(register, stack)
    when 'DIV' then register = mini_div(register, stack)
    when 'MOD' then register = mini_mod(register, stack)
    when 'POP' then register = mini_pop(register, stack)
    when 'PRINT' then mini_print(register)
    else register = command.to_i
    end
  end
end

minilang('6 PUSH')