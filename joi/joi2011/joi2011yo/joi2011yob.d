import std;

void main() {
    string S;
    int N;
    readf("%s\n%d\n", S, N);

    int res;
    foreach (_; 0 .. N) {
        string T;
        readf("%s\n", T);

        if (T.replicate(2).canFind(S)) {
            ++res;
        }
    }

    res.writeln;
}
