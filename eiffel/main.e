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

			create b.make (50)
			b.insert (30)
			b.insert (20)
			b.insert (10)
			b.insert (13)
			b.insert (25)
			b.insert (23)--left tree

			b.insert (35)
			b.insert (34)
			b.insert (31)
			b.insert (33)
			b.insert (40)
			b.insert (41)
			b.insert (42)

			if attached b.getroot.getleftnode as x then
				print(x.value)
			end

			print("Ist vorhanden: ")

			print(b.has (35))
			print("%N")


			print("Wurde geloescht: ")
			print(b.remove (35))
			print("%N")
			print("Ist vorhanden: ")
			print(b.has (35))
			if attached b.getroot.getleftnode as x then
				print(x.value)
			end


	end

end -- class MAIN

