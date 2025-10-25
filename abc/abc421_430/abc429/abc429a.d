import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    string[] S = iota(1, N + 1).map!(i => i <= M ? "OK" : "Too Many Requests").array;

    string res = format("%-(%s\n%)", S);
    res.writeln;
}
