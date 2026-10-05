import std;

void main() {
    int N, Q;
    readfln("%d %d", N, Q);

    dchar[][] S = new dchar[][](N);
    foreach (i; 0 .. N) {
        readfln("%s", S[i]);
    }

    dchar[] a = new dchar[](Q), b = new dchar[](Q);
    foreach (i; 0 .. Q) {
        readfln("%c %c", a[i], b[i]);
    }

    dchar[] D = new dchar[](26);
    foreach_reverse (x, y; zip(a, b)) {
        if (D[y - 'a'] == dchar.init) {
            D[y - 'a'] = y;
        }

        D[x - 'a'] = D[y - 'a'];
    }

    foreach (i; 0 .. N) {
        foreach (ref s; S[i]) {
            if (D[s - 'a'] == dchar.init) {
                continue;
            }

            s = D[s - 'a'];
        }
    }

    string res = format("%-(%s\n%)", S);
    res.writeln;
}
