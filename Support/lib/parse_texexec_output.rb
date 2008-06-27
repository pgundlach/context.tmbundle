def htmlize(str)
  filepath=ENV['TM_FILEPATH']
  if ENV['PDF_VIEWER']
    pdfview = "-a #{ENV['PDF_VIEWER']}"
  else
    pdfview = ""
  end
  file=File.basename(filepath)
  dir=File.dirname(filepath)
  
  str=str.to_s
  str = str.gsub("&", "&amp;").gsub("<", "&lt;")
  str = str.gsub(/^.*Insecure world writable dir.*$/, '')
  str = str.gsub(/\t+/, '<span style="white-space:pre;">\0</span>')
  str = str.reverse.gsub(/ (?= |$)/, ';psbn&').reverse
  str = str.gsub(/(.*?):(\d+):(.*)/, "<a href='txmt://open?url=file://#{dir}/\\1&line=\\2'>\\1:\\2:\\3</a>")
  #old, mm complained ;-)
  # str = str.gsub(/(.*?):(\d+):(.*)/, "<a href='txmt://open?url=file://#{dir}/#{file}&line=\\2'>\\1:\\2:\\3</a>")
  str = str.gsub(/(Transcript written on )(.*?\.log)/,"<a href='txmt://open?url=file://#{dir}/\\2'>\\1\\2</a>")
  str = str.gsub(/(Output written on )(.*)(\.pdf)/) do |s|
    href="javascript:TextMate.system(\"open #{pdfview} &apos;#{dir}/#{$2}.pdf&apos;\", null);"
    text="#{$1}#{$2}#{$3}"
    href
    "<a href='#{href}'>#{text}</a>"
  end
  str = str.gsub(/(Fatal error occurred, no output PDF file produced)/, '<span style="background-color:red;">\1</span>')
  return str
end
