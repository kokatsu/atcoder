import std;

void main() {
    int N;
    readfln("%d", N);

    --N;

    int D = N / 9, M = N % 9;

    string res = (M + 1).to!string.replicate(D + 1);
    res.writeln;
}
