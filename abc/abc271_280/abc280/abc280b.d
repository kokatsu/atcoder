import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.split.to!(int[]);

    auto res = new int[](N);
    res[0] = S[0];
    foreach (i; 1 .. N) {
        res[i] = S[i] - S[i - 1];
    }

    writefln("%(%d %)", res);
}
