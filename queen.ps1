
$board = @(
	@('.','.','.','.'),
	@('.','.','.','.'),
	@('.','.','.','.'),
	@('.','.','.','.')
)

function PrintBoard ($b) {
	for ($x=0; $x -lt 4; $x++) {
		for ($y=0; $y -lt 4; $y++) {
			[Console]::Write( $b[$x][$y] )
		}
		[Console]::Write( "`n" )
	}
}

function CheckAttack ($b, $x, $y) {
	#$board[$x][$y] = '?'
	$board_copy = @() + $b

	# check horizontal, x
	for ($i=0; $i -lt 4; $i++) {
		if ($board_copy[$i][$y] -eq 'Q') {
			return $true
		}
	}
	
	# check vertical, y
	for ($i=0; $i -lt 4; $i++) {
		if ($board_copy[$x][$i] -eq 'Q') {
			return $true
		}
	}
	
	# check diagonal
	for ($i=0; $i -lt 4; $i++) {
		for ($j=0; $j -lt 4; $j++) {
			if ($i -ne $x -and $j -ne $y) {
				if (($i-$x) -eq 0) { break }
				$m1 = ($j-$y)/($i-$x)
				if ($m1 -eq 1 -or $m2 -eq -1) {
					if ($board_copy[$i][$j] -eq 'Q') {
						return $true
					}
				}

				$m2 = -($j-$y)/($i-$x)
				if ($m1 -eq 1 -or $m2 -eq -1) {
					if ($board_copy[$x][$i] -eq 'Q') {
						return $true
					}
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
			if (-not (CheckAttack $board_copy $x $y)) {
				#sleep .001
				#'try queen'
				$board_copy[$x][$y] = 'Q'
				if ($x -ge 3) { TryQueen $board_copy ($x+1) $y }
				elseif ($y -lt 3) { TryQueen $board_copy 0 ($y+1) }

				#"$x $y"

			}
		}
	}

	PrintBoard $board_copy
	'--------'
}









#CheckAttack 1 1
TryQueen $board 0 0



<#

top-left -> bottom right
x++, y++




#>
