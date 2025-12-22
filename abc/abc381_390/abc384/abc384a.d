import std;

void main() {
    int N;
    dchar c1, c2;
    dchar[] S;
    readf("%d %c %c\n%s\n", N, c1, c2, S);

    dchar[] res = S.map!(s => s == c1 ? c1 : c2).array;
    res.writeln;
}
