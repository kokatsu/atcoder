import std;

void main() {
    int N;
    readfln("%d", N);

    size_t L;
    string[] S = new string[](N);
    foreach (ref s; S) {
        readfln("%s", s);
        L = max(L, s.length);
    }

    string[] T = new string[](N);
    foreach (i, s; S) {
        size_t d = (L - s.length) / 2;
        string dots = ".".replicate(d);
        T[i] = dots ~ s ~ dots;
    }

    string res = format("%-(%s\n%)", T);
    res.writeln;
}
