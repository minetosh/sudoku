The sudoku resolver written by prolog.
====

# How to install gprolog.

$ wget http://gprolog.univ-paris1.fr/gprolog-1.4.4.tar.gz  
$ tar zxvf gprolog-1.4.4.tar.gz  
$ cd gprolog-1.4.4/src  
$ ./configure  
$ make  
$ sudo make install  

# Solve a problem.

$ gprolog --consult-file sudoku.pl  
| ?- Row1 = [8, _, _, _, _, _, _, _, _],  
Row2 = [_, _, 3, 6, _, _, _, _, _],  
Row3 = [_, 7, _, _, 9, _, 2, _, _],  
Row4 = [_, 5, _, _, _, 7, _, _, _],  
Row5 = [_, _, _, _, 4, 5, 7, _, _],  
Row6 = [_, _, _, 1, _, _, _, 3, _],  
Row7 = [_, _, 1, _, _, _, _, 6, 8],  
Row8 = [_, _, 8, 5, _, _, _, 1, _],  
Row9 = [_, 9, _, _, _, _, 4, _, _],  
sudoku([Row1, Row2, Row3, Row4, Row5, Row6, Row7, Row8, Row9]).

Then, you get a answere.

Row1 = [8,1,2,7,5,3,6,4,9]  
Row2 = [9,4,3,6,8,2,1,7,5]  
Row3 = [6,7,5,4,9,1,2,8,3]  
Row4 = [1,5,4,2,3,7,8,9,6]  
Row5 = [3,6,9,8,4,5,7,2,1]  
Row6 = [2,8,7,1,6,9,5,3,4]  
Row7 = [5,2,1,9,7,4,3,6,8]  
Row8 = [4,3,8,5,2,6,9,1,7]  
Row9 = [7,9,6,3,1,8,4,5,2] ? 
