#!/usr/bin/env ruby

require 'rbconfig'
require 'mkmf'

have_library('socket','socket')
have_library('nsl','gethostbyname')
have_library('z')
have_library('iconv')
have_library('xml2')

create_header()
create_makefile('libxml_ruby')
