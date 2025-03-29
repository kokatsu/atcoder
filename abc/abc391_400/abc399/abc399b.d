import std;

void main() {
    int N;
    readf("%d\n", N);

    auto P = readln.chomp.split.to!(int[]);

    auto Q = P.dup;
    Q.sort!"a > b";

    auto G = Q.group.array;

    int r = 1;
    auto res = new int[](N);
    foreach (g; G) {
        foreach (i, p; P) {
            if (p == g[0]) {
                res[i] = r;
            }
        }
        r += g[1];
    }

    writefln("%(%d\n%)", res);
}
