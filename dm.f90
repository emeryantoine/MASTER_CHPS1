program main

	integer :: a, b, c, x
	real :: r

	call system("clear")
	print *, "Bonsoir ! Alors, il va falloir me donner 3 nombres a, b, c pour créer le polynome :"
	print *, "ax² + bx + c"
	print *, " "
	print *, "a = ?		b = ?		c =?"
	print *, " "
	read *, a, b, c
	call system("clear")
	print *, "ton pylonome est donc"
	print *, a,"x² +",b,"x +",c
	print *, " "
	print *, "tu veux la valeur en un x précis ? dit moi donc"
	print *, " "
	read *, x
	call system("clear")
	print *, "voila monseigneur",calcul(a, b, c, x)
	print *, " "
	print *, "Racines :"
	print *, " "
	call racines(a, b, c)
	print *, " "
	print *, "bye"


	contains

	function calcul (a, b, c, x)
		integer, intent(in) :: a, b, c, x
		integer :: calcul
		calcul = a*x*x + b*x + c
	end function calcul
	
	subroutine racines (a, b, c)
		integer, intent (in) :: a, b, c
		real :: delta
		real :: r1, r2
		
		delta = b**2 - 4*a*c
		
		if(delta < 0) then
			print *, "déso pas déso, il n'y a pas de racines réelles"
		else
			print *, "r1 = ",((-b) - sqrt(delta))/2*a
			print *, "r2 = ",((-b) + sqrt(delta))/2*a
		end if
		
	end subroutine racines

end program main
