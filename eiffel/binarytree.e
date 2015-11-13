note
	description: "Summary description for {BINARYTREE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BINARYTREE
	inherit CONTAINER[INTEGER]
		redefine is_empty, linear_representation end

create
	make

feature --Constructor

	make (value: INTEGER_32)
		do
			create root.make (value, Void)
		end

feature --insert

	insert (value: INTEGER_32)
		local
			currentnode: detachable NODE
			prevnode: NODE
			issmaller: BOOLEAN
		do
			prevnode := Current.root
			from
				currentnode := prevnode
			until
				currentnode = Void
			loop
				if (value < currentnode.getvalue) then
					prevnode := currentnode
					currentnode := currentnode.getleftnode
					issmaller := True
				elseif (value > currentnode.getvalue) then
					prevnode := currentnode
					currentnode := currentnode.getrightnode
					issmaller := False
				end
			end
			if (issmaller) then
				prevnode.setleftnode (value)
			else
				prevnode.setrightnode (value)
			end
		end

feature --find

	find (localvalue: INTEGER_32): detachable NODE
		local
			localnode: detachable NODE
		do
			Result:=Void
			from
				localnode := root
			until
				localnode = Void or Result /= Void
			loop
				if (localvalue = localnode.getvalue) then
					Result := localNode
				elseif (localvalue < localnode.getvalue) then
					localnode := localnode.getleftnode
				elseif (localvalue > localnode.getvalue) then
					localnode := localnode.getrightnode
				end
			end
		end

feature --has
	has(localValue: INTEGER): BOOLEAN
		do
			Result:= current.find (localValue)/=Void
		end

feature --getRoot

	getroot: NODE
		do
			Result := root
		end

feature --redefine
	is_empty: BOOLEAN
		do
			Result:= false	--always Root-Node
		end

--	linear_representation: LINEAR [INTEGER]
--			do
--				Result:= linear_representation
--			end



feature
	root: NODE

end -- class BINARYTREE

