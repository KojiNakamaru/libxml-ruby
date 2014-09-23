require './test_helper'

1000000.times do
  doc = XML::Document.string('<foo><bar/><baz/></foo>')
 #puts doc.root
  node = doc.root.first.remove!
  doc.root.last.next = node
  node = nil
end