import std;

void main() {
    int N;
    readf("%d\n", N);

    auto P = readln.chomp.split.to!(int[]);
    auto Q = readln.chomp.split.to!(int[]);

    P[] -= 1, Q[] -= 1;

    auto res = new int[](N);
    foreach (i; 0 .. N) {
        res[Q[i]] = Q[P[i]] + 1;
    }

    writefln("%(%d %)", res);
}
