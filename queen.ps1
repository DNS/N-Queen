
$board = @(
	@('.','.','.','.'),
	@('.','.','.','.'),
	@('.','.','.','.'),
	@('.','.','.','.')
)


function CheckAttack ($x, $y) {
	$board[$x][$y] = '?'

	# check horizontal, x
	for ($i=0; $i -lt 4; $i++) {
		if ($i -ne $x -and $j -ne $y) {
			$board[$i][$y] = 'Q'
		}
		#return $board[$i][$y] -eq 'Q'
	}
	
	# check vertical, y
	for ($i=0; $i -lt 4; $i++) {
		if ($i -ne $x -and $j -ne $y) {
			$board[$x][$i] = 'Q'
		}
		#return $board[$x][$i] -eq 'Q'
	}
	
	# check diagonal
	for ($i=0; $i -lt 4; $i++) {
		for ($j=0; $j -lt 4; $j++) {
			if ($i -ne $x -and $j -ne $y) {
				$m1 = ($j-$y)/($i-$x)
				$m2 = -($j-$y)/($i-$x)
				if ($m1 -eq 1 -or $m2 -eq -1) {
					$board[$i][$j] = 'Q'
				}

			}
		}
	}
	
	return $false
}




<#
for ($x=0; $x -lt 4; $x++) {
	for ($y=0; $y -lt 4; $y++) {

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


#CheckAttack 1 1
#PrintBoard


<#

top-left -> bottom right
x++, y++




#>
