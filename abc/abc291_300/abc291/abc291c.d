import std;

void main() {
    long N;
    string S;
    readf("%d\n%s\n", N, S);

    auto L = S.length + 1;

    long pos;
    bool[long] seen;
    seen[pos] = true;
    bool isOK;
    foreach (s; S) {
        if (s == 'R')
            pos += L;
        if (s == 'L')
            pos -= L;
        if (s == 'U')
            ++pos;
        if (s == 'D')
            --pos;

        if (pos in seen)
            isOK = true;

        seen[pos] = true;
    }

    writeln(isOK ? "Yes" : "No");
}
