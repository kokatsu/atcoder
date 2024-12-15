import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new bool[][](N, 26);
    foreach (i; 0 .. N) {
        string a;
        readf("%s\n", a);

        foreach (x; a) {
            A[i][x - 'a'] = true;
        }
    }

    int H = (N + 1) / 2;
    dchar[] l;
    foreach (i; 0 .. H) {
        dchar d;

        foreach (j; 0 .. 26) {
            if (A[i][j] && A[N - i - 1][j]) {
                d = (j + 'a').to!dchar;
                break;
            }
        }

        if (d == dchar.init) {
            writeln(-1);
            return;
        }

        l ~= d;
    }

    dchar[] r = l.dup;
    if (N % 2 == 1) {
        r.popBack;
    }
    r.reverse;

    dchar[] res = l ~ r;
    res.writeln;
}
