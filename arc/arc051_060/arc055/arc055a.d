import std;

void main() {
    int N;
    readfln("%d", N);

    string res = format("1%s7", "0".replicate(N - 1));
    res.writeln;
}
