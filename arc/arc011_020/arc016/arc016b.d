import std;

void main() {
    int N;
    readfln("%d", N);

    dchar[][] x = new dchar[][](N);
    foreach (ref v; x) {
        readfln("%s", v);
    }

    auto t = x.transposed;

    uint res;
    foreach (v; t) {
        auto g = v.group.array;

        foreach (a; g) {
            if (a[0] == 'o') {
                ++res;
            }
            else if (a[0] == 'x') {
                res += a[1];
            }
        }
    }

    res.writeln;
}
