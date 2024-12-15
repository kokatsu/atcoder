import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto res = new dchar[](S.length);
    foreach (i, s; S) {
        res[i] = to!dchar('A' + ((s - 'A') + N) % 26);
    }

    res.writeln;
}
