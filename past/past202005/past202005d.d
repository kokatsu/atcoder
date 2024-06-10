import std;

void main() {
    int N;
    readf("%d\n", N);

    auto s = new string[](5);
    foreach (i; 0 .. 5) readf("%s\n", s[i]);

    string[] example = [
        ".###..#..###.###.#.#.###.###.###.###.###.",
        ".#.#.##....#...#.#.#.#...#.....#.#.#.#.#.",
        ".#.#..#..###.###.###.###.###...#.###.###.",
        ".#.#..#..#.....#...#...#.#.#...#.#.#...#.",
        ".###.###.###.###...#.###.###...#.###.###."
    ];

    auto d = new string[][](10, 5);
    foreach (i; 0 .. 10) {
        foreach (j; 0 .. 5) {
            d[i][j] = example[j][i*4..(i+1)*4];
        }
    }

    dchar[] res;
    foreach (i; 0 .. N) {
        foreach (j; 0 .. 10) {
            if (iota(5).all!(k => s[k][i*4..(i+1)*4] == d[j][k])) {
                res ~= to!dchar(j+'0');
                break;
            }
        }
    }

    res.writeln;
}