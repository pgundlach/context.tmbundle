#!/usr/bin/env ruby -s

# shamelessly stolen from LATEX bundle :)
$:.unshift "#{ENV['TM_SUPPORT_PATH']}/lib"
require 'escape'
def esc(str)
  e_sn(str).gsub(/\}/, '\\}') # escaping inside a placeholder
end

style=$style || "it"

s=STDIN.read
if s.empty? then
  print "{\\#{style} $1}"
elsif style=="bf" && s =~ /^\{\\it\s*(.*)\}$/
  print "{\\\\bi #{esc $1}}"
elsif style=="it" && s =~ /^\{\\bf\s*(.*)\}$/
  print "{\\\\bi #{esc $1}}"
elsif style=="it" && s =~ /^\{\\bi\s*(.*)\}$/
  print "{\\\\bf #{esc $1}}"
elsif style=="bf" && s =~ /^\{\\bi\s*(.*)\}$/
  print "{\\\\it #{esc $1}}"
elsif s =~ /^\{\\#{Regexp.escape style}\s*(.*)\}$/ then
  print "${1:#{esc $1}}"
else
  print "{\\#{style} #{e_sn s}}"
end
