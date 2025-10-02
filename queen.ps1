
$board = @(
	@('.','.','.','.'),
	@('.','.','.','.'),
	@('.','.','.','.'),
	@('.','.','.','.')
)


function CheckAttack ($x, $y) {
	# check horizontal, x
	for ($i=0; $i -lt 4; $i++) {
		$board[$i][$y] = 'Q'
		#return $board[$i][$y] -eq 'Q'
	}
	
	# check vertical, y
	for ($i=0; $i -lt 4; $i++) {
		$board[$x][$i] = 'Q'
		#return $board[$x][$i] -eq 'Q'
	}
	
	# check diagonal
	
	
	return $false
}




<#
for ($x=0; $x -lt 4; $x++) {
	for ($y=0; $y -lt 4; $y++) {
		# x
		for ($i=0; $i -lt 4; $i++) {
			$a = $board[$x][$i] -eq 'Q'
			#if ($a) { "$x $y" }
		}

		#'--------'
		# y
		for ($i=0; $i -lt 4; $i++) {
			$a = $board[$i][$y] -eq 'Q'
			#if ($a) { "$x $y" }
		}

		#'--------'
		# diagonal


	}
}
#>



function PrintBoard () {
	for ($x=0; $x -lt 4; $x++) {
		for ($y=0; $y -lt 4; $y++) {
			[Console]::Write( $board[$x][$y] )
		}
		[Console]::Write( "`n" )
	}
}


CheckAttack 1 1
PrintBoard


<#

top-left -> bottom right
x++, y++




#>
