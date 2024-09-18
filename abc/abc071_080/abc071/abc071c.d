import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    A.sort!"a > b";

    auto G = A.group.filter!(g => g[1] >= 2).array;

    long res;
    if (!G.empty) {
        if (G[0][1] >= 4) {
            res = G[0][0] * G[0][0];
        }
        else if (G.length >= 2) {
            res = G[0][0] * G[1][0];
        }
    }

    res.writeln;
}