(module
	(func $print (import "js" "print") (param i32))
	(func (export "add") (param $left i32) (param $right i32)
		local.get $left
		local.get $right
		i32.add
		call $print
	)
)
