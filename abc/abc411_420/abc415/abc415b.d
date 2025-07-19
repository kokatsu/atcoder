import std;

void main() {
    string S;
    readf("%s\n", S);

    size_t L = S.length;

    size_t[] P = L.iota
        .filter!(p => S[p] == '#')
        .map!(p => p + 1)
        .array;

    string res = format("%(%(%d,%)\n%)", P.chunks(2));
    res.writeln;
}
