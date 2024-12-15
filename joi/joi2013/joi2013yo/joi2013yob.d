import std;

enum int L = 100;

void main() {
    int N;
    readf("%d\n", N);

    auto P = new int[][](N);
    auto C = new int[][](3, L + 1);
    foreach (i; 0 .. N) {
        P[i] = readln.chomp.split.to!(int[]);

        foreach (j, p; P[i])
            ++C[j][p];
    }

    auto res = new int[](N);
    foreach (i, p; P) {
        foreach (j, x; p) {
            if (C[j][x] == 1)
                res[i] += x;
        }
    }

    writefln("%(%s\n%)", res);
}
