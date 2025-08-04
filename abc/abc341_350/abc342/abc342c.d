import std;

void main() {
    int N, Q;
    string S;
    readf("%d\n%s\n%d\n", N, S, Q);

    char[] M = new char[](26);
    foreach (i; 0 .. 26) {
        M[i] = to!char('a' + i);
    }

    foreach (_; 0 .. Q) {
        char c, d;
        readf("%c %c\n", c, d);

        foreach (ref m; M) {
            if (m == c) {
                m = d;
            }
        }
    }

    string res = S.map!(s => M[s - 'a'])
        .to!string;
    res.writeln;
}
