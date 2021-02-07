# Game of Life

The **Game of Life** is a cellular automaton devised by the British mathematician John Horton Conway in 1970.

## Rules

The universe of the Game of Life is an infinite, two-dimensional orthogonal grid of square cells, each of which is in one of two possible states, live or dead.

Every cell interacts with its eight neighbours, which are the cells that are horizontally, vertically, or diagonally adjacent. At each step in time, the following transitions occur:

1. Any live cell with fewer than two live neighbours dies, as if by underpopulation.
2. Any live cell with two or three live neighbours lives on to the next generation.
3. Any live cell with more than three live neighbours dies, as if by overpopulation.
4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

### Examples

```
.....       .....       .....       .....
...#.       ...#.       .....       .....
..#..  -->  .....  -->  .....  -->  .....
.....       .....       .....       .....
.....       .....       .....       .....


.....       .....       .....       .....
.##..       .##..       .##..       .##..
.#...  -->  .#...  -->  .##..  -->  .##..
...#.       .....       .....       .....
.....       .....       .....       .....


.....       .....       .....       .....
..#..       .#...       ..#..       .....
#.#..  -->  ..##.  -->  ...#.  -->  .#.#.
.##..       .##..       .###.       ..##.
.....       .....       .....       ..#..
```

## Implementations

| Language | Location      | Last visit |
|----------|---------------|------------|
| Ruby     | [ruby](ruby/) | Feb 2021   |
