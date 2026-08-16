import std;

void main() {
    int N;
    readfln("%d", N);

    int res;
    int[string] D;
    foreach (_; 0 .. N) {
        string S;
        readfln("%s", S);

        string T = std.uni.toLower(S);
        ++D[T];
        res = max(res, D[T]);
    }

    res.writeln;
}
