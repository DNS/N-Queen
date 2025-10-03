
$board = @(
	@('.','.','.','.'),
	@('.','.','.','.'),
	@('.','.','.','.'),
	@('.','.','.','.')
)


function CheckAttack ($x, $y) {
	#$board[$x][$y] = '?'

	# check horizontal, x
	for ($i=0; $i -lt 4; $i++) {
		if ($i -ne $x -and $j -ne $y) {
			#$board[$i][$y] = 'Q'
			return $true
		}
		#return $board[$i][$y] -eq 'Q'
	}
	
	# check vertical, y
	for ($i=0; $i -lt 4; $i++) {
		if ($i -ne $x -and $j -ne $y) {
			#$board[$x][$i] = 'Q'
			return $true
		}
		#return $board[$x][$i] -eq 'Q'
	}
	
	# check diagonal
	for ($i=0; $i -lt 4; $i++) {
		for ($j=0; $j -lt 4; $j++) {
			if ($i -ne $x -and $j -ne $y) {
				if (($i-$x) -eq 0) { break }
				$m1 = ($j-$y)/($i-$x)
				if ($m1 -eq 1 -or $m2 -eq -1) {
					#$board[$i][$j] = 'Q'
					return $true
				}

				$m2 = -($j-$y)/($i-$x)
				if ($m1 -eq 1 -or $m2 -eq -1) {
					#$board[$i][$j] = 'Q'
					return $true
				}

			}
		}
	}
	
	return $false
}


function TryQueen ($b, $i, $j) {
	$board_copy = @() + $b
	for ($x=$i; $x -lt 4; $x++) {
		for ($y=$j; $y -lt 4; $y++) {
			if ( CheckAttack $x $y -eq $false) {
				#sleep .001
				#'try queen'
				#if ($x -ge 3) { TryQueen $board_copy ($x+1) $y }
				#elseif ($y -lt 3) { TryQueen $board_copy 0 ($y+1) }

				#"$x $y"
				$board[$x][$y] = 'Q'
			}
		}
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


#CheckAttack 1 1
TryQueen $board 0 0
PrintBoard


<#

top-left -> bottom right
x++, y++




#>
