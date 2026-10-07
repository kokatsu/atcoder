import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    int res;
    foreach (_; 0 .. N) {
        string S;
        readfln("%s", S);

        if (S.count('!') >= K) {
            ++res;
        }
    }

    res.writeln;
}
