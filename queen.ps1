
$board = @(
	@('.','.','.','.'),
	@('.','.','.','.'),
	@('.','.','Q','.'),
	@('.','.','.','.')
)


function CheckAttack ($x, $y) {
	# check horizontal, x
	for ($i=0; $i -lt 4; $i++) {
		return $board[$i][$y] -eq 'Q'
	}
	
	# check vertical, y
	for ($i=0; $i -lt 4; $i++) {
		return $board[$x][$i] -eq 'Q'
	}
	
	# check diagonal
	
	
	return $false
}





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




function PrintBoard () {
	for ($x=0; $x -lt 4; $x++) {
		for ($y=0; $y -lt 4; $y++) {
			[Console]::Write( $board[$x][$y] )
		}
		[Console]::Write( "`n" )
	}
}



#PrintBoard


<#

top-left -> bottom right
x++, y++




#>
