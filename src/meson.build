gkbbi_sources = [
  'main.vala',
  'window.vala',
]

gkbbi_deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk+-3.0', version: '>= 3.22'),
]

gnome = import('gnome')

gkbbi_sources += gnome.compile_resources('gkbbi-resources',
  'gkbbi.gresource.xml',
  c_name: 'gkbbi'
)

executable('gkbbi', gkbbi_sources,
  vala_args: '--target-glib=2.50',  dependencies: gkbbi_deps,
  install: true,
)
