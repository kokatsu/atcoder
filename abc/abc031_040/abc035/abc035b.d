import std;

void main() {
    string S;
    int T;
    readf("%s\n%d\n", S, T);

    int x, y, z;
    foreach (s; S) {
        if (s == 'L')
            --x;
        if (s == 'R')
            ++x;
        if (s == 'U')
            ++y;
        if (s == 'D')
            --y;
        if (s == '?')
            ++z;
    }

    int d = x.abs + y.abs;

    int res;
    if (T == 1)
        res = d + z;
    else
        res = (d >= z ? d - z : (z - d) % 2);

    res.writeln;
}
