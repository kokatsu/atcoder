import std;

void main() {
    int M, D, y, m, d;
    readf("%d %d\n%d %d %d\n", M, D, y, m, d);

    int yn = y, mn = m, dn = d;
    ++dn;
    if (dn > D) {
        ++mn;
        dn = 1;
        if (mn > M) {
            ++yn;
            mn = 1;
        }
    }

    string res = format("%d %d %d", yn, mn, dn);
    res.writeln;
}
