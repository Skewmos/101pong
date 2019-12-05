#!/usr/bin/env ruby
##
## EPITECH PROJECT, 2019
## function.rb
## File description:
## Calculation function of the velocity vector.
## The coordinate of ball and the incidence angle.
## Created by Legrand Jérémie and karim el-karroumy
##

include Math

def make_calcul (a, b, n)

  c1 = {'x' => (b["x"] - a["x"])}
  c2 = {'y' => (b["y"] - a["y"])}
  c3 = {'z' => (b["z"] - a["z"])}
  c1.each_key{ |key|  c1[key] = c1[key].to_f}
  c2.each_key{ |key|  c2[key] = c2[key].to_f}
  c3.each_key{ |key|  c3[key] = c3[key].to_f}

  puts("The velocity vector of the ball is:")
  print("(")
  c1.each_value {|value| print('%.2f, ' % value)}
  c2.each_value {|value| print('%.2f, ' % value)}
  c3.each_value {|value| print('%.2f' % value)}
  print(")\n")

  d1 = {'x' => ((c1["x"] * n) + b["x"])}
  d2 = {'y' => ((c2["y"] * n) + b["y"])}
  d3 = {'z' => ((c3["z"] * n) + b["z"])}
  d1.each_key {|key| d1[key] = d1[key].to_f}
  d2.each_key {|key| d2[key] = d2[key].to_f}
  d3.each_key {|key| d3[key] = d3[key].to_f}

  puts("At time t + #{n}, ball coordinates will be:\n")
  print("(")
  d1.each_value {|value| print('%.2f, ' % value)}
  d2.each_value {|value| print('%.2f, ' % value)}
  d3.each_value {|value| print('%.2f' % value)}
  print(")\n")

  if ((c3 == 0) & (b["z"] != 0))
    print("The ball won't reach the paddle.\n")
    return (84)
  end
  if (-b["z"]/(b["z"]-a["z"]) < 0)
    print("The ball won't reach the paddle.\n")
    return (84)
  end

  norm = Math.sqrt((c1['x'] ** 2) + (c2['y'] ** 2) + (c3['z'] ** 2))
  x =  (c3['z']).abs / norm
  rate = (((Math::PI / 2) - ((Math.acos(x))) ) * 180) / Math::PI
  assert_equal = rate
  puts "The incidence angle is:"
  print "%0.2f degrees" % assert_equal
  print "\n"
end
