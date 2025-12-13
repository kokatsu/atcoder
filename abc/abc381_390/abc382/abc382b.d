import std;

void main() {
    int N, D;
    dchar[] S;
    readf("%d %d\n%s\n", N, D, S);

    foreach_reverse (ref s; S) {
        if (D <= 0) {
            break;
        }

        if (s == '@') {
            s = '.';
            --D;
        }
    }

    string res = S.to!string;
    res.writeln;
}
