import std;

void main() {
    int N, L, R;
    readfln("%d %d %d", N, L, R);

    int[] P = readln.chomp.split.to!(int[]);

    int res = -1, M = -1;
    foreach (i, p; P) {
        if (p < L || R < p) {
            continue;
        }

        if (p > M) {
            M = p;
            res = i.to!int + 1;
        }
    }

    res.writeln;
}
