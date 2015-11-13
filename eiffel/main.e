note
	description: "BinaryTree application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	MAIN

inherit
	ARGUMENTS

create
	make

feature {NONE}

	make
		local
			b: BINARYTREE
		do
			create b.make (12)
			b.insert (8)
			b.insert (9)
			b.insert (55)
			b.insert (47)
			b.insert (32)
			b.insert (7)
			b.insert (1)
			b.insert (10)

			print (b.has (55))

		print ("OK!")
	end

end -- class MAIN

