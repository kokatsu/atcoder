import std;

void main() {
    int N, D;
    readf("%d %d\n", N, D);

    auto X = new int[][](N);
    foreach (i; 0 .. N)
        X[i] = readln.chomp.split.to!(int[]);

    int res;
    foreach (i; 0 .. N - 1) {
        foreach (j; i + 1 .. N) {
            int d;
            foreach (a, b; zip(X[i], X[j])) {
                d += abs(a - b) ^^ 2;
            }

            int r = d.to!real
                .sqrt
                .floor
                .to!int;
            if (r * r == d)
                ++res;
        }
    }

    res.writeln;
}
