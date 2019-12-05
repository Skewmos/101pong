#!/usr/bin/env ruby
##
## EPITECH PROJECT, 2019
## error_handler.rb
## File description:
## Display an error if a parameter is fasle
## Created by Legrand Jérémie and karim el-karroumy
##

# Error No Arguments
if ARGV.count == 0
    exit(84)
end

# Error Not Enough Arguments
if ARGV.count < 7
    exit(84)
end

# Error Too Many Arguments
if ARGV.count > 7
    exit(84)
end

# Error Incorrect Arguments
#if ARGV != is_a?($ARGV)
#  puts("Incorrect Arguments, use ./101pong -h to see how to use 101pong")
#  return (84)
#end