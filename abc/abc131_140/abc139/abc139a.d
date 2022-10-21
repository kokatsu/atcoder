import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    int res;
    foreach (s, t; zip(S, T)) {
        if (s == t) ++res;
    }

    res.writeln;
}