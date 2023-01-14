module main

import os

const (
	path1 = os.join_path(os.dir(os.executable()), 'files') + os.path_separator
	path2 = os.join_path(os.dir(os.executable()), 'moved') + os.path_separator
)

fn main() {
	println(os.join_path(os.executable(), 'files'))
	os.write_file(path1 + '1.txt', '1') or { panic(err) }
	os.cp(path1 + '1.txt', path2 + 'copied.txt') or { panic(err) }
	// os.mv panics only if working with docker volumes
	// a normal linux mv command inside the container with the same arguments works
	os.mv(path1 + '1.txt', path2 + 'moved.txt') or { panic(err) }
	println('success')
}
