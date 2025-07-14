import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = repeat(N, N);

    string res = format("%(%d%)", A);
    res.writeln;
}
