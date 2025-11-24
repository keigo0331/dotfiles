#!/usr/bin/env ruby
# Brewfile sorter: sorts entries by category and alphabetically within each.

require "pathname"

# Use Brewfile under homebrew/ only
path = Pathname.new("homebrew/Brewfile")
abort "Brewfile not found: #{path}" unless path.exist?

sections = Hash.new { |h, k| h[k] = [] }

path.each_line(chomp: true) do |line|
  case line
  when /^tap /
    sections[:tap] << line
  when /^brew /
    sections[:brew] << line
  when /^cask /
    sections[:cask] << line
  when /^mas /
    sections[:mas] << line
  else
    sections[:other] << line
  end
end

sorted = [
  *sections[:tap].sort_by(&:downcase),
  *sections[:brew].sort_by(&:downcase),
  *sections[:cask].sort_by(&:downcase),
  *sections[:mas].sort_by(&:downcase),
  *sections[:other],
]

path.write(sorted.join("\n") + "\n")
