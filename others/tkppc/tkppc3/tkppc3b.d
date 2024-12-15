import std;

void main() {
    string N;
    readf("%s\n", N);

    int total, odd, even;
    foreach (i, n; N) {
        int d = n - '0';

        total += d;
        (i % 2 == 1 ? odd : even) += d;
    }

    string res1 = (total % 3 == 0) && ((N[$ - 1] - '0') % 2 == 0) ? "yES" : "nO";
    string res2 = abs(odd - even) % 11 == 0 ? "yES" : "nO";
    res1.writeln;
    res2.writeln;
}
