import std;

void main() {
    int N;
    readf("%d\n", N);

    auto s = readln.chomp;

    dchar[dchar] r;
    r['S'] = 'W', r['W'] = 'S';

    auto len = s.length;
    foreach (i; 0 .. 4) {
        auto t = new dchar[](len+2);
        foreach (j; 0 .. 2) {
            t[j] = (((i >> j) & 1) ? 'S' : 'W');
        }

        foreach (j; 1 .. len+1) {
            t[j+1] = ((t[j] == 'S') == (s[j%len] == 'o') ? t[j-1] : r[t[j-1]]);
        }

        if (t[0..2] != t[len..len+2]) continue;

        t[0..len].writeln;
        return;
    }

    writeln(-1);
}