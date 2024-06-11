package main

import "fmt"

const (
	MONTHS = 12
	YEARS  = 5
)

type myfloat float32

func main() {
	days := [MONTHS]int{31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
	days[0] = 30
	for index := 0; index < MONTHS; index++ {
		println(days[index])
	}
	rain := [YEARS][MONTHS]myfloat{
		{4.3, 4.3, 4.3, 3.0, 2.0, 1.2, 0.2, 0.2, 0.4, 2.4, 3.5, 6.6},
		{8.5, 8.2, 1.2, 1.6, 2.4, 0.0, 5.2, 0.9, 0.3, 0.9, 1.4, 7.3},
		{9.1, 8.5, 6.7, 4.3, 2.1, 0.8, 0.2, 0.2, 1.1, 2.3, 6.1, 8.4},
		{7.2, 9.9, 8.4, 3.3, 1.2, 0.8, 0.4, 0.0, 0.6, 1.7, 4.3, 6.2},
		{7.6, 5.6, 3.8, 2.8, 3.8, 0.2, 0.0, 0.0, 0.0, 1.3, 2.6, 5.2},
	}
	fmt.Printf(" YEAR     $AINFALL (inches)\n")
	var total myfloat = 0
	for year := 0; year < YEARS; year++ {
		var subtot myfloat = 0
		for month := 0; month < MONTHS; month++ {
			subtot = subtot + rain[year][month]
		}
		fmt.Printf("%5d %15.1f\n", 2010+year, subtot)
		total += subtot
	}
	fmt.Printf("\n The yearly average is %.1f inches.\n\n", total/YEARS)
	fmt.Printf(" Jan  Feb  Mar  Apr  May  Jun  Jul  Aug  Sep  Oct  Nov  Dec\n")
	for month := 0; month < MONTHS; month++ {
		var subtot myfloat = 0
		for year := 0; year < YEARS; year++ {
			subtot += rain[year][month]
		}
		fmt.Printf("%4.1f ", subtot/YEARS)
	}
	println()
}
