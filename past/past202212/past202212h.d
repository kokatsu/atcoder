import std;

void main() {
    int D;
    string N;
    readf("%d\n%s\n", D, N);

    auto pos = new ulong[][](10);
    foreach (i, n; N) {
        pos[n - '0'] ~= i;
    }

    auto S = new SortedRange!(ulong[], "a < b")[](10);
    foreach (i; 0 .. 10)
        S[i] = pos[i].assumeSorted;

    ulong res;
    foreach (i, n; N) {
        ulong d = n - '0';

        foreach (j; 0 .. d) {
            auto ub = S[j].upperBound(i);
            res += (d - j) * ub.length;
        }

        foreach (j; d + 1 .. 10) {
            auto ub = S[j].upperBound(i);
            res += (j - d) * ub.length;
        }
    }

    res.writeln;
}
