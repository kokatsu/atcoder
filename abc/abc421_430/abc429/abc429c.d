import std;

void main() {
    long N;
    readf("%d\n", N);

    long[] A = readln.chomp.split.to!(long[]);

    A.sort;

    auto G = A.group.array;

    long res;
    foreach (g; G) {
        long C = g[1].to!long;
        res += C * (C - 1) / 2 * (N - C);
    }

    res.writeln;
}
