# frozen_string_literal: true

puts 'Введите день '
day = gets.chomp.to_i
puts 'Введите месяц '
month = gets.chomp.to_i

puts 'Введите год '
year = gets.chomp.to_i

days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

days[1] = 29 if (year % 400).zero? || ((year % 4).zero? && year % 100 != 0)

puts days.take(month - 1).sum + day
