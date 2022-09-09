import std;

void main() {
    int N;
    readf("%d\n", N);

    int D = N % 10;

    string res = "hon";
    if (D == 3) res = "bon";
    if ([0, 1, 6, 8].canFind(D)) res = "pon";

    res.writeln;
}