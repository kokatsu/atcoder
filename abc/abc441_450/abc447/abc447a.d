import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    string res = (N + 1) / 2 >= M ? "Yes" : "No";
    res.writeln;
}
