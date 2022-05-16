if has('nvim')
    let g:python3_host_prog = '/path/to/python/bin/python3'
else
    set pyxversion=3

    " OSX
    set pythonthreedll=/Library/Frameworks/Python.framework/Versions/3.6/Python

    " Windows
    set pythonthreedll=python37.dll
    set pythonthreehome=C:\Python37
endif
